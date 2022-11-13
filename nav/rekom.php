<?php 
    require "../db/conn.php";
    require "../db/tb_r.php";
    require "../php/sessiona.php";
    require "../php/header.php";
?>
<nav>
    <div class="fnav">
        <a href="../dashboard/admin.php"> Home </a>
    </div>
    <a href="db.php"> Cerita </a>
    <div class="lnav">
        <a href="rekom.php" id="Activenav"> Rekomendasi </a>
    </div>
    <div class="logout">
    <a href="../php/logout.php" id="Logout"> Log Out </a>
    </div>
</nav>
<main>
    <hr>
    <h1> Database </h1>
    <table id=dataview>
        <tr>
            <th> No </th>
            <th> Judul </th>
            <th> Penulis </th>
            <th> Sinopsis </th>
            <th> Cover </th>
            <th> Aksi </th>
        </tr>
        <?php while ($s = mysqli_fetch_assoc($result)) { ?>
            <tr>
                <td> <?php echo $no++ ?> </td>
                <td> <?php echo $s['judul'] ?> </td>
                <td> <?php echo $s['penulis'] ?> </td>
                <td> 
                    <div class="sinmo1"> <?php echo substr_replace($s['sinopsis'], "...", 50) ?> </div>
                    <div class="sinmo2"> <?php echo $s['sinopsis'] ?> </div>
                </td>
                <td> <?php $path = '../file/'.$s['filename']; echo "<img src=$path alt='cover' height='70vh' width='80vw'>" ?> </td>
                <td>
                    <button style="padding: 10%"> <a href="../db/delete_rekom.php?id=<?php echo $s["id"]; ?>" onclick = "return confirm('Konfirmasi Hapus?')"> Hapus </a> </button>
                </td>   
            </tr>
        <?php }?>
    </table>
</main>
<?php require "../php/footer.php"?>