<?php 
    require "../db/conn.php";
    require "../db/edit.php";
    require "../php/session.php";
    require "../php/header.php";
?>    
<nav>
    <div class="fnav">
        <a href="../dashboard/user.php"> Home </a>
    </div>
    <div class="lnav">
        <a href="fiction.php" id="Activenav"> Stories </a>
    </div>
    <a href="me.php"> About us </a>
    <a href="../php/logout.php" id="Logout"> Log Out </a>
</nav>
<main>             
            <?php $path = '../file/'.$s['filename']; echo "<img src=$path alt='cover' height='120vh' width='130vw'>" ?> 
                <div class="stories">
                    <h3><?php echo $s['judul'] ?></a> </h3>
                    <h6><?php echo $s['penulis'] ?> </h6>
                    <div class="sinmo4"> <?php echo $s['cerita'] ?> </div>
                </div>
                </td >
            </tr>
        </div>
</main>
<?php require "../php/footer.php"?>