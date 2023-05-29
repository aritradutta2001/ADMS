<?php
include 'connection.php';

if(isset($_POST["button1"]))
{

	$period1day1=$_POST['p1d1'];
	$period2day1=$_POST['p2d1'];
	$period3day1=$_POST['p3d1'];
	$period4day1=$_POST['p4d1'];
	$period5day1=$_POST['p5d1'];
	$period6day1=$_POST['p6d1'];
	$period7day1=$_POST['p7d1'];

	
	$sql="UPDATE `semester1` SET `period1`='$period1day1',`period2`='$period2day1',`period3`='$period3day1',
    `period4`='$period4day1',`period5`='$period5day1',`period6`='$period6day1',`period7`='$period7day1' WHERE id=1";
$result=mysqli_query($con,$sql);
if($result)
	{
		echo"<script>alert('Wow!Sucessfully Updated...')</script>";
		
	}
	else
	{
		echo"<script>alert('Connection Failed.')</script>";
	}
}

if(isset($_POST["button2"]))
{
    $period1day2=$_POST['p1d2'];
	$period2day2=$_POST['p2d2'];
	$period3day2=$_POST['p3d2'];
	$period4day2=$_POST['p4d2'];
	$period5day2=$_POST['p5d2'];
	$period6day2=$_POST['p6d2'];
	$period7day2=$_POST['p7d2'];

	$sql="UPDATE `semester1` SET `period1`='$period1day2',`period2`='$period2day2',`period3`='$period3day2',
    `period4`='$period4day2',`period5`='$period5day2',`period6`='$period6day2',`period7`='$period7day2' WHERE id=2";
    $result=mysqli_query($con,$sql);
if($result)
{
	echo"<script>alert('Wow!Sucessfully Generated...')</script>";
	
}
else
{
	echo"<script>alert('Connection Failed.')</script>";
}
}
if(isset($_POST["button3"]))
{
	$period1day3=$_POST['p1d3'];
	$period2day3=$_POST['p2d3'];
	$period3day3=$_POST['p3d3'];
	$period4day3=$_POST['p4d3'];
	$period5day3=$_POST['p5d3'];
	$period6day3=$_POST['p6d3'];
	$period7day3=$_POST['p7d3'];

    $sql="UPDATE `semester1` SET `period1`='$period1day3',`period2`='$period2day3',`period3`='$period3day3',
    `period4`='$period4day3',`period5`='$period5day3',`period6`='$period6day3',`period7`='$period7day3' WHERE id=3";
    $result=mysqli_query($con,$sql);
if($result)
{
	echo"<script>alert('Wow!Sucessfully Generated...')</script>";
	
}
else
{
	echo"<script>alert('Connection Failed.')</script>";
}
}
if(isset($_POST["button4"]))
{
	$period1day4=$_POST['p1d4'];
	$period2day4=$_POST['p2d4'];
	$period3day4=$_POST['p3d4'];
	$period4day4=$_POST['p4d4'];
	$period5day4=$_POST['p5d4'];
	$period6day4=$_POST['p6d4'];
	$period7day4=$_POST['p7d4'];

	$sql="UPDATE `semester1` SET `period1`='$period1day4',`period2`='$period2day4',`period3`='$period3day4',
    `period4`='$period4day4',`period5`='$period5day4',`period6`='$period6day4',`period7`='$period7day4' WHERE id=4";
    $result=mysqli_query($con,$sql);
if($result)
{
	echo"<script>alert('Wow!Sucessfully Generated...')</script>";
	
}
else
{
	echo"<script>alert('Connection Failed.')</script>";
}
}

if(isset($_POST["button5"]))
{
	$period1day5=$_POST['p1d5'];
	$period2day5=$_POST['p2d5'];
	$period3day5=$_POST['p3d5'];
	$period4day5=$_POST['p4d5'];
	$period5day5=$_POST['p5d5'];
	$period6day5=$_POST['p6d5'];
	$period7day5=$_POST['p7d5'];

    $sql="UPDATE `semester1` SET `period1`='$period1day5',`period2`='$period2day5',`period3`='$period3day5',
    `period4`='$period4day5',`period5`='$period5day5',`period6`='$period6day5',`period7`='$period7day5' WHERE id=5";
    $result=mysqli_query($con,$sql);
if($result)
{
	echo"<script>alert('Wow!Sucessfully Generated...')</script>";
	
}
else
{
	echo"<script>alert('Connection Failed.')</script>";
}
}

?>