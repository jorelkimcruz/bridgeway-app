<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php 
if(isset($_POST['print']))
{
$eto=$_POST['dateprint'];
$report=""; $i=0;
$date=date("Y-m-d");
$kwiri=mysql_query("SELECT * FROM tb_attendance WHERE date='$eto'");

if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_name=$job_fetch['emp_name'];
$f_in=$job_fetch['time_in'];
$f_out=$job_fetch['time_out'];
$f_date=$job_fetch['date'];
$f_id=$job_fetch['emp_id'];


$i++;
$report.="<tr>
<td>$i</td>
<td>$f_name</td>
<td>$f_in</td>
<td>$f_out</td>
<td>$f_date</td>
<td>$f_id</td>
</tr>";
}

}
}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL ATTENDANCE TODAY
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>NAME</th>
<th>TIME IN</th>
<th>TIME OUT</th>
<th>DATE</th>
<th>Employee ID</th>

</tr>
<?php echo $report;?>

</table>
</center>
</body>
</html>