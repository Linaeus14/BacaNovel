<?php require "../php/session.php"?>
<?php require "../php/header.php"?>
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
        <div class="slideshow-container">
        <div class="mySlides fade">
            <img class="pic" src="../file/Osame2.jpg">
            <p></p>
            <h9><b>Pelipur Lara</b><h9>
        </div>
        <div class="mySlides fade">
            <img class="pic" src="../file/mash1.jpg">
            <p></p>
            <h9><b>Suamiku Suami Dia</b><h9>
        </div>
        <div class="mySlides fade">
            <img class="pic" src="../file/9So.jpg">
            <p></p>
            <h9><b>Tersenyumlah Istriku</b><h9>
        </div>
        <div class="mySlides fade">
            <img class="pic" src="../file/Florance1.jpg">
            <p></p>
            <h9><b>Padahal Mirip</b><h9>
        </div>
        <div class="mySlides fade">
            <img class="pic" src="../file/9Soo.jpg">
            <p></p>
            <h9><b>Menyesal Putus</b><h9>
        </div>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
            <span class="dot" onclick="currentSlide(5)"></span>
        </div>
    <script>
    showSlides(1);
    </script>
    </body>
</html>
    </main>
<?php require "../php/footer.php"?>