<?php
include 'connection.php';
if (isset($_POST['UN']) && isset($_POST['PASS'])) {
    $id = $_POST['UN'];
    $password = $_POST['PASS'];
} else {
    die();
}
$q = mysqli_query($con, "SELECT aid FROM admin_login WHERE aid = '$id' and pwd = '$password' ");
if (mysqli_num_rows($q) == 1) {
    header("Location:addteachers.php");
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    echo "<script type='text/javascript'>alert('$message');</script>";

}
?>