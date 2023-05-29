<Html>  
    <head>   
    <title> Notice </title>  
    </head>  
    <body>  
    <center><h2><u>Notice</u></h2></center>
    <form action=" " method ="Post">  
    <label>Session : </label>
	        <select name="select_session">
                        <?php
                            include 'connection.php';

                            $q = mysqli_query($con,
                                "SELECT distinct session FROM student_details");
                            $row_count = mysqli_num_rows($q);
                            if ($row_count) {
                                $mystring = '
                    <option selected disabled>Select Session</option>';
                                while ($row = mysqli_fetch_assoc($q)) {
                                    $mystring .= '<option value="' . $row['session'] . '">' . $row['session'] . '</option>';
                                }

                                echo $mystring;
                            }
                            ?>  
                           
            </select>
						<br><br>
    <label>Semester :</label>
            <select name="select_semester">
                        <?php
                            include 'connection.php';

                            $q = mysqli_query($con,
                                "SELECT * FROM sem");
                            $row_count = mysqli_num_rows($q);
                            if ($row_count) {
                                $mystring = '
                    <option selected disabled>Select Semester</option>';
                                while ($row = mysqli_fetch_assoc($q)) {
                                    $mystring .= '<option value="' . $row['sem_id'] . '">' . $row['sem_name'] .  '</option>';
                                }

                                echo $mystring;
                            }
                            ?>  
                           

            </select>
    <br><br>
	<label> Notice Title : </label>         
    <textarea  rows="4" cols="50" name="t"></textarea> <br> <br>
    <label> Upload Notice Pdf : </label>         
    <input type="file" name="u"  accept=".pdf" value=""> <br> <br> 
    <input type="submit" name="submit" value="Submit"/>  
    </form> 
    <?php
	include "connection.php";
	if(isset($_POST["submit"]))
	{
        
		$session=$_POST['select_session'];
        $sem=$_POST['select_semester'];
		$title=$_POST['t'];
        $upload=$_POST['u'];
		
		$sql="insert into normal_notice_admin (session,semester,title,notice_pdf) values ('$session','$sem','$title','$upload')";
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