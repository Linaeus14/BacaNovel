<?php
    require "../db/conn.php";
    $result = mysqli_query($conn,"SELECT * FROM rekomendasi");
    $rows = mysqli_num_rows($result);
    $id = $_GET['id'];
    if($rows!=5){
            $s = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM story LEFT JOIN files ON story.file_id = files.id WHERE file_id = $id"));
            $judul = $s["judul"];
            $penulis = $s["penulis"];
            $sinopsis = $s["sinopsis"];
            $cerita = $s["cerita"];
            $fl_id=$s['file_id'];
            $sql2 = "INSERT INTO rekomendasi VALUES ('', '$judul', '$penulis', '$sinopsis', '$cerita', '$fl_id')";
            $result2 = mysqli_query($conn, $sql2);

            if ($result2 ){
                echo "<script LANGUAGE='JavaScript'>
                        window.alert('Rekomendasi Berhasil Ditambah');
                        window.location.href='../nav/db.php';
                    </script>";
                die();
            }
            else{
                echo "<script LANGUAGE='JavaScript'>
                        window.alert('Rekomendasi Gagal Ditambah');
                        window.location.href='../nav/db.php';
                    </script>";       
                die();
            }
        }
  else{
         echo"
            <script>
                alert('Rekomendasi Tidak Boleh Lebih Dari 5');
                window.location.href='../nav/db.php';
            </script>";
        die();
    }
?>