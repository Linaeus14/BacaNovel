<?php
    require "../php/session.php";
    require "../php/header.php";
?>  
<nav>
    <div class="fnav">
        <a href="../dashboard/user.php"> Home </a>
    </div>
    <div class="lnav">
        <a href="../nav/fiction.php"> Stories </a>
    </div>
    <a href="me.php" id="Activenav"> About us </a>
    <a href="../php/logout.php" id="Logout"> Log Out </a>
</nav>
<main>
<h2 style="text-align:center">About Us</h2>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="row">
  <div class="column">
    <div class="card">
      <img class="zoom" src="../AboutUs/tito.jpeg" alt="Tito" style="width:100%">
      <div  class="container">
        <h2>Tito Darmawan</h2>
        <p class="title">Ketua</p>
        <p>2109106042</p>
        <p>TitoDarmawan@gmail.com</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img class="zoom" src="../AboutUs/ayu.jpeg" alt="Ayu" style="width:100%">
      <div class="container">
        <h2>Ayu Lestari Gunawan</h2>
        <p class="title">Anggota</p>
        <p>2109106054</p>
        <p>AyuLestariGunawan@gmail.com</p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img class="zoom" src="../AboutUs/daus.jpeg" alt="Firdaus" style="width:100%">
      <div class="container">
        <h2>Muhammad Firdaus</h2>
        <p class="title">Anggota</p>
        <p>2109106052</p>
        <p>MuhammadFirdaus@gmail.com</p>
      </div>
    </div>
  </div>
</div>

</main>
<?php require "../php/footer.php"?>  