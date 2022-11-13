<?php 
    require "../db/conn.php";
    require "../db/edit.php";
    require "../php/sessiona.php";
    require "../php/header.php";
?>
<nav>
    <div class="fnav">
        <a href="../index.php"> Home </a>
    </div>
    <a href="../nav/db.php" id="Activenav"> Cerita </a>
    <div class="lnav">
        <a href="rekom.php" > Rekomendasi </a>
    </div>
    <a href="../php/logout.php" id="Logout"> Log Out </a>
</nav>
<main>
    <hr>
    <form id="submit" action="" method="post" enctype="multipart/form-data">
        <table>
            <h2> Ubah Data </h2>
            <tr>
             <label for="fl"> <?php $path = '../file/'.$s['filename']; echo "<img src=$path alt='cover' height='100' width='150'>" ?> </label>
            </tr>
            <tr>
                <td> <label for="fl"> Cover </label></td>
                <td><input type="file" name="fl" accept="image/png, image/jpeg" required></td>
            </tr>
            <tr>
                <td> Judul </td>
                <td> <input type="text" name="judul" placeholder="enter the title here" value="<?php echo $s["judul"] ?>" required> </td>
            </tr>
            <tr>
                <td> Penulis </td>
                <td> <input type="text" name="penulis" placeholder="enter the author here" value="<?php echo $s["penulis"] ?>" required> </td>
            </tr>
            <tr>
                <td> Sinopsis </td>
                <td> <textarea name="sinopsis" id="sinopsis" cols="24" rows="5" form="submit" placeholder="enter the synopsis here" required><?php echo $s["sinopsis"] ?></textarea> </td>
            </tr>
            <tr>
                <td> Cerita </td>
                <td> <textarea name="cerita" id="cerita" cols="24" rows="5" form="submit" placeholder="enter the story here" required><?php echo $s["cerita"] ?></textarea> </td>
            </tr>
        </table>
        <hr>
        <input type="submit" name="edit" value="Ubah"></input>
    </form>
    <hr>
</main>
<?php require "../php/footer.php"?>