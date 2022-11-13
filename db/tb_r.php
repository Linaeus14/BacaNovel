<?php
    if(isset($_GET['key'])){
        $halaman = 5;
        $page = isset($_GET['halaman'])? (int)$_GET["halaman"]:1;
        $mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
        $key = $_GET['key'];
        $result = mysqli_query(
            $conn, 
            "SELECT * FROM rekom 
            LEFT JOIN story ON rekom.story_id = story.id
            LEFT JOIN files ON story.file_id = files.id 
            WHERE story.judul LIKE '%$key%' OR story.penulis LIKE '%$key%' 
            LIMIT $mulai, $halaman"
        );
        $query = mysqli_query(
            $conn, 
            "SELECT * FROM rekom 
            LEFT JOIN story ON rekom.story_id = story.id
            LEFT JOIN files ON story.file_id = files.id
            WHERE story.judul LIKE '%$key%' OR story.penulis LIKE '%$key%'"
        );
    }
    else{
        $halaman = 5;
        $page = isset($_GET['halaman'])? (int)$_GET["halaman"]:1;
        $mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
        $result = mysqli_query(
            $conn, 
            "SELECT * FROM rekom 
            LEFT JOIN story ON rekom.story_id = story.id
            LEFT JOIN files ON story.file_id = files.id
            LIMIT $mulai, $halaman"
        );
        $query = mysqli_query(
            $conn, 
            "SELECT * FROM rekom 
            LEFT JOIN story ON rekom.story_id = story.id
            LEFT JOIN files ON story.file_id = files.id"
        );
    }
    $total = mysqli_num_rows($query);
    $pages = ceil($total/$halaman);
    $no =$mulai+1;
    ?>