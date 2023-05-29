<?php

include 'connection.php';
$id = $_GET['name'];
$q = mysqli_query($con,
    "UPDATE classrooms  SET status = '' WHERE name = '$id' ");
if ($q) {

    header("Location:allotsubjects.php");

} else {
    echo 'Error';
}