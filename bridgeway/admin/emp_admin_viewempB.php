
<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;

if(isset($_POST['submitdate']))
{
$fdate=$_POST['fdate'];
$edate=$_POST['tdate'];
$ass=$_POST['asa'];
if($edate<$fdate)
{
	$report="<tr>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
</tr>";
}
elseif($edate>=$fdate)
{
$kwiri=mysql_query("SELECT * FROM tb_attendance WHERE emp_id='$ass' AND date BETWEEN '$fdate' AND '$edate'");
if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_name=$job_fetch['emp_name'];
$f_tin=$job_fetch['time_in'];
$f_tout=$job_fetch['time_out'];
$f_date=$job_fetch['date'];
$f_eid=$job_fetch['emp_id'];


$i++;
$report.="<tr>
<td>$i</td>
<td>$f_name</td>
<td>$f_tin</td>
<td>$f_tout</td>
<td>$f_date</td>
<td>$f_eid</td>
</tr>";
}
}
}
}
?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL EMPLOYEE
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>NAME</th>
<th>Time IN</th>
<th>Time OUT</th>
<th>Date</th>
<th>Employee ID</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>