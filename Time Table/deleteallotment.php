<?php
include 'connection.php';
$id = $_GET['name'];
$q = mysqli_query($con,
    "UPDATE subjects  SET isAlloted = '0' , allotedto = '',allotedto2 = '' WHERE subject_code = '$id' ");
if ($q) {

    header("Location:allotsubjects.php");

} else {
    echo 'Error';
}