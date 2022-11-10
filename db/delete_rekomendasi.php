<?php
    require "../db/conn.php";
    $result = mysqli_query($conn,"SELECT * FROM rekomendasi");
    $rows = mysqli_num_rows($result);
    $id = $_GET['id'];
    if($rows!=1){
    $result1 = mysqli_query($conn, "DELETE FROM rekomendasi WHERE file_id = '$id'");

    if ( $result1 ){
        echo"
            <script>
                alert('Rekomendasi Berhasil Dihapus');
                window.location.href='../nav/rekomendasi.php';
            </script>";
        die();
    }
    else{
        echo"
            <script>
                alert('Rekomendasi Gagal Dihapus');
                window.location.href='../nav/rekomendasi.php';
            </script>";
        die();
    }}
    else{
         echo"
            <script>
                alert('Rekomendasi Tidak Boleh Kosong');
                window.location.href='../nav/rekomendasi.php';
            </script>";
        die();
    }
?>