<?php require "php/scheck.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/login.css" />
    <title> Baca Novel </title>
</head>
<body>
    <header>
        <hr>
        <h1> Baca Novel </h1>
    </header>
    <hr>
    <nav class="header">
    <h3> Log In </h3>
    </nav>
    <main>
        <div class="input-group">
        <form id="login" action="./db/login.php" method="post" >
            <table>
                <tr>
                    <td> Username </td>
                    <td> <input type="text" name="username" placeholder="masukan username anda" required> </td>
                </tr>
                <tr>
                    <td> Password </td>
                    <td> <input type="password" name="pass" placeholder="masukan passwrod anda" required> </td>
                </tr>
            </table>
            <input type="submit" name = "Login" value="Log In">
            <div class="fnav">
            <p>
            Not yet a member? <a href = "page/sign_up.php"> Sign Up </a>
            </p>
        </div>
        </div>
        </form>
    </main>
