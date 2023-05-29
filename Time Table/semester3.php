<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width,initial-scale=2.0">
  <link rel="stylesheet" href="assets/css/stylesemester.css">
  <style>
a
{
text-decoration:none;
color: #fff;
}
  </style>
</head>

<body>
    <center><h1>Generate Time Table For Semester3</h1></center>
    <form action="semester1.php" method="POST">
        <table class="table table-striped table-hover" id="customers">
          <tr>
            <th style="text-align:center">WEEKDAYS</th>
            <th style="text-align:center">10:00-11:00</th>
            <th style="text-align:center">11:00-12:00</th>
            <th style="text-align:center">12:00-1:00</th>
            <th style="text-align:center">1:00-1:30</th>
            <th style="text-align:center">1:30-2:30</th>
            <th style="text-align:center">2:30-3:30</th>
            <th style="text-align:center">3:30-4:30</th>
            <th style="text-align:center">4:30-5:30</th>

          </tr>
          <tr>

            <td style="text-align:center"><input type="text" name="tu" placeholder="
Tuesday" required></td>
            <td style="text-align:center">
              <Select name=p1d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select>
            </td>
            <td style="text-align:center">
			<Select name=p2d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select>
			</td>
            <td style="text-align:center"><Select name=p3d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center">LUNCH</td>
            <td style="text-align:center"><Select name=p4d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p5d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p6d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p7d1>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
          </tr>
          <tr>

            <td style="text-align:center"><input type="text" name="we" placeholder="
Wednesday" required></td>
            <td style="text-align:center"><Select name=p1d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p2d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p3d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center">LUNCH</td>
            <td style="text-align:center"><Select name=p4d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p5d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p6d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p7d2>
              <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>

          </tr>
          <tr>

            <td style="text-align:center"><input type="text" name="th" placeholder="
Thursday" required></td>
            <td style="text-align:center">
            <Select name=p1d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select>  
              </td>
            <td style="text-align:center"><Select name=p2d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center"><Select name=p3d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center">LUNCH</td>
            <td style="text-align:center"><Select name=p4d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center"><Select name=p5d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center"><Select name=p6d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center"><Select name=p7d3>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>

          </tr>
          <tr>

            <td style="text-align:center"><input type="text" name="fr" placeholder="
Friday" required></td>
            <td style="text-align:center"><Select name=p1d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center"><Select name=p2d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select> </td>
            <td style="text-align:center"><Select name=p3d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center">LUNCH</td>
            <td style="text-align:center"><Select name=p4d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p5d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p6d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p7d4>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>

          </tr>
          <tr>

            <td style="text-align:center"><input type="text" name="sa" placeholder="
Saturday" required></td>
            <td style="text-align:center"><Select name=p1d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p2d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p3d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center">LUNCH</td>
            <td style="text-align:center"><Select name=p4d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p5d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p6d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>
            <td style="text-align:center"><Select name=p7d5>
            <?php
                include 'connection.php';

                $q = mysqli_query($con,
                    "SELECT * FROM subjects where semester =3");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    $mystring = '
         <option selected disabled>Select Subject</option>';
                    while ($row = mysqli_fetch_assoc($q)) {
                        $mystring .= '<option value="' . $row['id'] . '">' . $row['subject_name'] .  '</option>';
                    }

                    echo $mystring;
                }
                ?>
              </select></td>

          </tr>

        </table>
      <br><br>
  
       <center><button class ="glow-on-hover" type ="button" ><a href="semester1update.html">Update</a></button>
        <button class ="glow-on-hover" type ="submit" name="submit">Generate</button></center>
        <button class ="glow-on-hover" type ="button" ><a href="addteachers.php">BACK</a></button>
      
        </form>
		<?php
include 'connection.php';

if(isset($_POST["submit"]))
{
	$tuesday=$_POST['tu'];
	$period1day1=$_POST['p1d1'];
	$period2day1=$_POST['p2d1'];
	$period3day1=$_POST['p3d1'];
	$period4day1=$_POST['p4d1'];
	$period5day1=$_POST['p5d1'];
	$period6day1=$_POST['p6d1'];
	$period7day1=$_POST['p7d1'];
	$wednesday=$_POST['we'];
	$period1day2=$_POST['p1d2'];
	$period2day2=$_POST['p2d2'];
	$period3day2=$_POST['p3d2'];
	$period4day2=$_POST['p4d2'];
	$period5day2=$_POST['p5d2'];
	$period6day2=$_POST['p6d2'];
	$period7day2=$_POST['p7d2'];
	$thursday=$_POST['th'];
	$period1day3=$_POST['p1d3'];
	$period2day3=$_POST['p2d3'];
	$period3day3=$_POST['p3d3'];
	$period4day3=$_POST['p4d3'];
	$period5day3=$_POST['p5d3'];
	$period6day3=$_POST['p6d3'];
	$period7day3=$_POST['p7d3'];
	$friday=$_POST['fr'];
	$period1day4=$_POST['p1d4'];
	$period2day4=$_POST['p2d4'];
	$period3day4=$_POST['p3d4'];
	$period4day4=$_POST['p4d4'];
	$period5day4=$_POST['p5d4'];
	$period6day4=$_POST['p6d4'];
	$period7day4=$_POST['p7d4'];
	$saturday=$_POST['sa'];
	$period1day5=$_POST['p1d5'];
	$period2day5=$_POST['p2d5'];
	$period3day5=$_POST['p3d5'];
	$period4day5=$_POST['p4d5'];
	$period5day5=$_POST['p5d5'];
	$period6day5=$_POST['p6d5'];
	$period7day5=$_POST['p7d5'];

	$sql="Insert INTO semester3 Values('$tuesday','$period1day1','$period2day1','$period3day1','$period4day1','$period5day1','$period6day1','$period7day1'),
('$wednesday','$period1day2','$period2day2','$period3day2','$period4day2','$period5day2','$period6day2','$period7day2'),
('$thursday','$period1day3','$period2day3','$period3day3','$period4day3','$period5day3','$period6day3','$period7day3'),
('$friday','$period1day4','$period2day4','$period3day4','$period4day4','$period5day4','$period6day4','$period7day4'),
('$saturday','$period1day5','$period2day5','$period3day5','$period4day5','$period5day5','$period6day5','$period7day5')";
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