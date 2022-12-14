<?php 
    require "../db/conn.php";
    require "../db/tb_s.php";
    require "../php/sessiona.php";
    require "../php/header.php";
?>
<nav>
    <div class="fnav">
        <a href="../dashboard/admin.php"> Home </a>
    </div>
    <a href="db.php" id="Activenav"> Cerita</a>
    <div class="lnav">
        <a href="rekom.php" > Rekomendasi </a>
    </div>
    <div class="logout">
    <a href="../php/logout.php" id="Logout"> Log Out </a>
    </div>
</nav>
<main>
    <hr>
    <h1> Database </h1>
    <button type=""> <a href="../page/add_db.php"> Tambah Data </a> </button>
    <button type=""> <a href="../db/del_all.php" onclick = "return confirm('Konfirmasi Hapus Semua?')"> Hapus Semua </a> </button>
    <hr>
    <button onclick="readmore()"> Baca Selengkapnya </button>
    <form id = "search" action = "" method = "get">
        <table id="searchbar">
            <tr> 
                <?php if(isset($key)){?>
                    <td> <input type="text" name='key' placeholder="judul/penulis" value="<?php echo $key?>" > </td> 
                <?php }else{ ?>
                    <td> <input type="text" name='key' placeholder="judul/penulis"> </td>
                <?php } ?>
                <td> <button type="submit" name='sdb' style="padding: 7%"> Cari </button> </td>
            </tr>
        </table>
    </form>
    <table id=dataview>
        <tr>
            <th> No </th>
            <th> Judul </th>
            <th> Penulis </th>
            <th> Sinopsis </th>
            <th> Cover </th>
            <th> Tanggal </th>
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
                <td> <?php echo $s['tanggal_up'] ?> </td>
                <td>
                    <button style="padding: 7%"> <a href="../page/edit_db.php?id=<?php echo $s["id"]; ?>"> Edit </a> </button>
                    <button style="padding: 7%"> <a href="../db/del.php?id=<?php echo $s["id"]; ?>" onclick = "return confirm('Konfirmasi Hapus?')"> Hapus </a> </button>
                    <button style="padding:7%"> <a href="../db/add_rekom.php?id=<?php echo $s["id"]; ?>"> Rekomendasi </a> </button>
                </td>   
            </tr>
        <?php }?>
    </table>
    <p><b> Halaman <?php echo $page ?> </b></p>
    <hr>
    <?php
        for ($i=1; $i<=$pages ; $i++){
            if(isset($key)){
    ?>
        <a href="?halaman=<?php echo $i ?>&key=<?php echo $key ?>"> <?php echo $i; ?></a>
    <?php 
            }
            else{
    ?>
        <a href="?halaman=<?php echo $i ?>"> <?php echo $i; ?> </a>
    <?php
            }
        }
    ?>
    <hr>
</main>
<?php require "../php/footer.php"?>