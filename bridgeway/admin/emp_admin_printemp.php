
<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$kwiri=mysql_query("SELECT * FROM tb_employee");

if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_fname=$job_fetch['firstname'];
$f_lname=$job_fetch['lastname'];
$f_mname=$job_fetch['middlename'];
$f_name=$f_lname .", ". $f_fname ."". $f_mname;
$f_email=$job_fetch['email'];
$f_add=$job_fetch['address'];
$f_pos=$job_fetch['position'];
$f_dept=$job_fetch['department'];
$f_es=$job_fetch['elem_school'];
$f_hs=$job_fetch['h_school'];
$f_cs=$job_fetch['c_school'];
$f_contact=$job_fetch['contact_no'];

$i++;
$report.="<tr>
<td>$i</td>
<td>$f_name</td>
<td>$f_add</td>
<td>$f_email</td>
<td>$f_pos</td>
<td>$f_dept</td>
<td>$f_es</td>
<td>$f_hs</td>
<td>$f_cs</td>
<td>$f_contact</td>
</tr>";
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
<th>Address</th>
<th>Email</th>
<th>Position</th>
<th>Department</th>
<th>Elementary School</th>
<th>High School</th>
<th>College School</th>
<th>Contact Number</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>