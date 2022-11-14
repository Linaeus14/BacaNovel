<?php
    require "../db/conn.php";

    $id = $_GET['id'];
    $all = mysqli_query($conn,"SELECT * FROM rekom");
    $rows = mysqli_num_rows($all);

    $st = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM story WHERE file_id = '$id'"));
    $st_id = $st['id'];
    $result = mysqli_query($conn, "DELETE FROM rekom WHERE story_id = '$st_id'");
    if ($result){
        echo"
            <script>
                alert('Rekomendasi Berhasil Dihapus');
                window.location.href='../nav/rekom.php';
            </script>";
        die();
    }
    else{
        echo"
            <script>
                alert('Rekomendasi Gagal Dihapus');
                window.location.href='../nav/rekom.php';
            </script>";
        die();
    }
?>