<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$kwiri=mysql_query("SELECT * FROM tb_user WHERE level='3'");

if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_user=$job_fetch['username'];
$f_pass=$job_fetch['password'];
$f_fname=$job_fetch['first_name'];
$f_lname=$job_fetch['last_name'];
$f_contact=$job_fetch['contact_no'];
$f_email=$job_fetch['email'];

$i++;
$report.="<tr>
<td>$i</td>
<td>$f_fname</td>
<td>$f_lname</td>
<td>$f_contact</td>
<td>$f_email</td>
<td>$f_user</td>
</tr>";
}

}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL CUSTOMERS
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>Firstname</th>
<th>Lastname</th>
<th>Contact Number</th>
<th>Email</th>
<th>Username</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>