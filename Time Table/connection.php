<?php

$con = mysqli_connect("localhost", "root", "", "projectdb");

if (!$con) 
{
    die("<script>alert('Connection Failed.')</script>");
}

?>