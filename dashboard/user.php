<?php require "../db/conn.php"; ?>
<?php require "../php/sessionu.php"?>
<?php require "../php/header.php"?>
<?php $n=1;?>
<?php $result= mysqli_query($conn, "SELECT * FROM rekomendasi LEFT JOIN files ON rekomendasi.file_id = files.id");
    $no=1;?>
<link rel="stylesheet" href="../style/index.css" />
  <script type="text/javascript" src="../js/slide.js"></script>
    <nav>
        <div class="fnav">
            <a href="user.php" id="Activenav"> Home </a>
        </div>
        <div class="lnav">
            <a href="../nav/fiction.php"> Stories </a>
        </div>
        <a href="../nav/me.php"> About us </a>
        <a href="../php/logout.php" id="Logout"> Log Out </a>
    </nav>
    <main>
        <hr>
        <img src="../img/Logo1.png" alt="Logo1" height="15%" width="15%">
        <h2> RECOMMENDED NOVEL</h2>

        <h4></h4>
    <div><a class="prev" onclick="plusSlides(-1)">&#10094;</a></div>
    <?php while ($s = mysqli_fetch_assoc($result)) { ?>
    <div class="slideshow-container">
        <div class="mySlides fade">
            <div class="card">
                    <?php $path = '../file/'.$s['filename'];?>
                    <img class="zoom" src='<?php echo $path?>' alt='cover' height='190vh' width='60vw'>
                <div class="container">
                <h9><b><a href="../nav/story.php?id=<?php echo $s["id"]; ?>"><?php echo $s['judul']?></b></h9>
            </div>
        <br>
        </div>
    </div></div>
    <div><a class="next" onclick="plusSlides(1)">&#10095;</a></div>
        <?php $n+=1?>
    <?php }?>
    <script>
    showSlides(1);
    </script>
    </body>
</html>
    </main>
<?php require "../php/footer.php"?>