<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/login.css" />
    <title> Baca Novel </title>
</head>
<body>
    <header>
        <hr>
        <h1> Baca Novel </h1>
    </header>
    <hr>
    <nav class="header">
    <h2> Sign Up </h2>
    </nav>
    <main>
        <div class="input-group">

        <form id="signup" action="../db/sign_up.php" method="post">
            <table>
                <tr>
                    <td> Username </td>
                    <td> <input type="text" name="user" placeholder="masukan username anda" required> </td>
                </tr>
                <tr>
                    <td>  Email </td>
                    <td> <input type="email" name="email" placeholder="masukan email valid" required> </td>
                </tr>
                <tr>
                    <td> Password </td>
                    <td> <input type="password" name="pass" placeholder="masukan password anda" required> </td>
                </tr>
                <tr>
                    <td> Konfirmasi Pass </td>
                    <td> <input type="password" name="cpass" placeholder="masukan password anda" required> </td>
                </tr>
            </table>
            <input type="submit" name = 'signup' value="Sign Up">

            <div class="fnav">
            <p>
            Already a member?  <a href="../index.php"> Sign in </a>
            </p>
            </div>
            </div>
        </form>
    </main>
