<?php

include 'connection.php';
if (isset($_POST['tobealloted']) && isset($_POST['toalloted2'])) 
{
    $subject = $_POST['tobealloted'];
    $teacher = $_POST['toalloted'];
    $teacher2 = $_POST['toalloted2'];

    //  $message = "nTry again.";
    // echo "<script type='text/javascript'>alert('$message');</script>";
} 
else 
{
    $message = "dead.";
    echo "<script type='text/javascript'>alert('$message');</script>";
    die();
}
$q = mysqli_query($con, "UPDATE subjects SET isAlloted=1, allotedto='$teacher' , allotedto2='$teacher2'  WHERE subject_code='$subject'");

if ($q) 
{
    $message = "Done.\\nTry again.";
    echo "<script type='text/javascript'>alert('$message');</script>";
    header("Location:allotpracticals.php");
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    $message = $subject;
    echo "<script type='text/javascript'>alert('$message');</script>";
    // header("Location:http://localhost:2000/Project/admin_db.jsp");

}

?>