<Html>  
    <head>   
    <title>Special Notice </title>  
    </head>  
    <body>  
    <center><h2><u>Special Notice</u></h2></center>
    <form action=" " method ="Post">  
    <label>Student Name : </label>
         <select name="select_sid">
                        <?php
                            include 'connection.php';

                            $q = mysqli_query($con,
                                "SELECT * FROM student_login");
                            $row_count = mysqli_num_rows($q);
                            if ($row_count) {
                                $mystring = '
                    <option selected disabled>Select Student</option>';
                                while ($row = mysqli_fetch_assoc($q)) {
                                    $mystring .= '<option value="' . $row['sid'] . '">' . $row['fname'] ." ".$row['lname'] .  '</option>';
                                }

                                echo $mystring;
                            }
                            ?>  
                           

    </select><br><br>
	<label> Notice Title : </label>         
    <textarea  rows="4" cols="50" name="t"></textarea> <br> <br>
    <label> Upload Notice Pdf : </label>         
    <input type="file" name="u" accept=".pdf" /> <br> <br> 
    <input type="submit" name="submit" value="Submit"/>  
    </form>  
	<?php
	include "connection.php";
	if(isset($_POST["submit"]))
	{
		$sid=$_POST['select_sid'];
		$title=$_POST['t'];
        $upload=$_POST['u'];
		
		$sql="insert into special_notice_admin (sid,title,notice_pdf) values('$sid','$title','$upload')";
		$result=mysqli_query($con,$sql);
		if($result)
		{
			echo"<script>alert('Wow!Sucessfully Generated...')</script>";
			//header("Location: generatetimetable.php");
		}
		else
		{
			echo"<script>alert('Connection Failed.')</script>";
		}

	}
	?>
   
	
    </body>  
    </html>  