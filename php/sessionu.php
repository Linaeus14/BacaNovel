<?php 
    session_start();
    if(isset($_SESSION["sidu"])) {
        
    }
    else {
        header("Location: ../index.php", TRUE, 301);
        die();
    }
    $now = time();
    if($now > $_SESSION['expire']) {
        session_destroy();
        header("Location: ../index.php");
        die();
    }
?>
