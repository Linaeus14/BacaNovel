<?php require "../php/sessiona.php"?>
<?php require "../php/header.php"?>
    <nav>
        <div class="fnav">
            <a href="admin.php" id="Activenav"> Home </a>
        </div>
        <div class="lnav">
            <a href="../nav/fiction2.php"> Stories </a>
        </div>
        <a href="../php/logout.php" id="Logout"> Log Out </a>
    </nav>
    <main>
        <hr>
        <img src="../img/Logo1.png" alt="Logo1" height="25%" width="25%">
        <h3> Tempat dimana, isi pikiran penulis tersampaikan dalam tulisan </h3>
        <hr>
        <form id="request" action="../php/view.php" method="post">
            <table>
                <h2> Submit Cerita </h2>
                <tr>
                    <td> Judul </td>
                    <td> <input type="text" name="judul" placeholder="enter the title here" required> </td>
                </tr>
                <tr>
                    <td> Genre </td>
                    <td>
                        <input type="radio" name="genre" value="sedih" required> Senang
                        <input type="radio" name="genre" value="senang" required> Sedih
                        <input type="radio" name="genre" value="netral" required> Netral
                    </td>
                </tr>
                <tr>
                    <td> Email </td>
                    <td> <input type="email" name="email" id="email" placeholder="enter your email here" required></td>
                </tr>
                <tr>
                    <td> Jumlah Paragraf </td>
                    <td> <input type="number" name="paragraf" required> </td>
                </tr>
            </table>
            <hr>
            <input type="file" name="file" accept=".doc, .docx, text/plain, application/pdf" required>
            <input type="submit" value="Submit File">
        </form>
        <hr>
    </main>
<?php require "../php/footer.php"?>