<?php

session_start();
$class = $_GET["i"];
$str = "<option selected disabled>Select</option>";
$days = array("tuesday", "wednesday", "thursday", "friday", "saturday");
$day = $days[($class - 8) / 8];
$periods = array("period1", "period2", "period3", "period4", "period5", "period6","period7");
$period = $periods[($class - 1) % 8];
$q = mysqli_query($con, "SELECT * FROM teachers ");
while ($row = mysqli_fetch_assoc($q)) {
    $query = mysqli_query($con, "SELECT * FROM " . $row['faculty_number'] . " WHERE day = '$day'");
    $r = mysqli_fetch_assoc($query);
    if ($r[$period] == "-<br>-" || $r[$period] == "-<br>" || $r[$period] == "-") {
        $str .= " \"<option value=\"{$row['faculty_number']}\">{$row['name']}</option>\"";
    }
}
echo $str;
?>