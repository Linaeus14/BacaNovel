<?php
    require "../db/conn.php";

    $id = $_GET['id'];
    $check = mysqli_query($conn, "SELECT * FROM rekom 
        LEFT JOIN story ON rekom.story_id = story.id
        LEFT JOIN files ON story.file_id = files.id
        WHERE file_id = $id"
    );
    if( mysqli_fetch_assoc($check) ){
        echo "<script LANGUAGE='JavaScript'>
        window.alert('Cerita sudah ada di rekomendasi!');
        window.location.href='../nav/db.php';
        </script>";
        die();
    }
    else{
        $all = mysqli_query($conn,"SELECT * FROM rekom");
        $rows = mysqli_num_rows($all);
        if($rows!=5){
                $st = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM story WHERE file_id = '$id'"));
                $st_id = $st['id'];
                $sql = "INSERT INTO rekom VALUES ('', '$st_id')";
                $result = mysqli_query($conn, $sql);

                if ($result ){
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
    }
?>