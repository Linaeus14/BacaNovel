<?php require "../db/conn.php"; ?>
<?php require "../db/tb_r.php"; ?>
<?php require "../php/sessionu.php"?>
<?php require "../php/header.php"?>

<link rel="stylesheet" href="../style/index.css" />
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
        <?php $rows = mysqli_num_rows($result); if($rows!=1){ ?>
            <div><a class="prev" onclick="plusSlides(-1)">&#10094;</a></div>
        <?php } while ($s = mysqli_fetch_assoc($result)) { ?>
            <div class="slideshow-container">
                <div class="mySlides fade">
                    <div class="card">
                        <?php $path = '../file/'.$s['filename'];?>
                        <img class="zoom" src='<?php echo $path?>' alt='cover' height='190vh' width='60vw'>
                        <div class="container">
                            <h9><b><a href="../nav/story.php?id=<?php echo $s["id"]; ?>"><?php echo $s['judul']?></b></h9>
                        </div>
                    </div>
                </div>
            </div>
        <?php if($rows!=1){ ?>
            <div><a class="next" onclick="plusSlides(1)">&#10095;</a></div>
        <?php }}?>
        <script type="text/javascript" src="../js/slide.js">showSlides(1);</script>
    </main>
<?php require "../php/footer.php"?>