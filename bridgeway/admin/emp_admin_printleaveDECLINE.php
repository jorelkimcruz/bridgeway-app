
<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$kwiri=mysql_query("SELECT * FROM tb_leave WHERE status='Decline'");

if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_name=$job_fetch['emp_name'];
$f_reason=$job_fetch['reason'];
$f_contact=$job_fetch['contact_no'];
$f_sdate=$job_fetch['start_date'];
$f_edate=$job_fetch['end_date'];

$i++;
$report.="<tr>
<td>$i</td>
<td>$f_name</td>
<td>$f_reason</td>
<td>$f_contact</td>
<td>$f_sdate</td>
<td>$f_edate</td>
</tr>";
}

}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL DECLINED LEAVE REQUEST
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>NAME</th>
<th>Reason</th>
<th>Contact Number</th>
<th>Start Date</th>
<th>End Date</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>