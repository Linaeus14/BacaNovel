<?php 
    require "../db/conn.php";
    require "../db/tb_s.php";
    require "../php/session.php";
    require "../php/header.php";
?>
<nav>
    <div class="fnav">
        <a href="../dashboard/admin.php"> Home </a>
    </div>
    <div class="lnav">
        <a href="db.php" id="Activenav"> Database </a>
    </div>
    <a href="../php/logout.php" id="Logout"> Log Out </a>
</nav>
<main>
    <hr>
    <h1> Database </h1>
    <button type=""> <a href="../page/add_db.php"> Tambah Data </a> </button>
    <button type=""> <a href="../db/del_all.php" onclick = "return confirm('Konfirmasi Hapus Semua?')"> Hapus Semua </a> </button>
    <hr>
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
        <?php $i = 1; foreach ($story as $s): ?>
            <tr>
                <td> <?php echo $i ?> </td>
                <td> <?php echo $s['judul'] ?> </td>
                <td> <?php echo $s['penulis'] ?> </td>
                <td> <?php echo $s['sinopsis'] ?> </td>
                <td> <?php $path = '../file/'.$s['filename']; echo "<img src=$path alt='cover' height='100' width='180'>" ?> </td>
                <td> <?php echo $s['tanggal_up'] ?> </td>
                <td>
                    <button> <a href="../page/edit_db.php?id=<?php echo $s["id"]; ?>"> Edit </a> </button>
                    <button> <a href="../db/del.php?id=<?php echo $s["id"]; ?>" onclick = "return confirm('Konfirmasi Hapus?')"> Hapus </a> </button>
                </td>   
            </tr>
        <?php $i++; endforeach ?>
    </table>
    <hr>
</main>
<?php require "../php/footer.php"?>