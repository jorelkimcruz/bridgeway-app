<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php include_once("../includes/functions.php"); ?>

<?php
logged_in();
$id=$_SESSION['id'];
$msgs="";

$query=mysql_query("SELECT * FROM tb_user WHERE id='$id'");
if(mysql_num_rows($query)>0)
{
$emp_fetch=mysql_fetch_array($query);
$e_id=$emp_fetch['id'];
$e_username=$emp_fetch['username'];
$e_password=$emp_fetch['password'];
$e_fname=$emp_fetch['first_name'];
$e_lname=$emp_fetch['last_name'];
$name=$emp_fetch['first_name']. " " .$emp_fetch['last_name'];
$e_contact=$emp_fetch['contact_no'];
$e_email=$emp_fetch['email'];
$trydate=(date("Y-m-d"));



}
$msgs="<tr><th>NAME<td>$name</td><td><input type='hidden' name='usernamebox' id='usernamebox' value='$name'></input></td></th></tr>";


$kweere=mysql_query("SELECT casual_no, emergency_no FROM tb_employee WHERE email='$e_email'");
if(mysql_num_rows($kweere)>0)
{
$emp_fetch=mysql_fetch_array($kweere);
$e_casual=$emp_fetch['casual_no'];
$e_emer=$emp_fetch['emergency_no'];
}

?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bridge Way</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="../default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<form action="leave_request.php" method="POST">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li class='active-tab'>Leave Request</li>
					<li><a href="emp_check_leave_request.php"  >Check Leave Request</a></li>
					<li><a href="emp_profile.php" >Profile</a></li>
					<li><a href="../logout.php" >Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<!--<h2>LEAVE REQUEST</h2>
			</div>
			<center>
			<table>
			<tr><th>Reason for Leaving</th><td><select name="leave">
			<option>-</option>
			<option>Sick Leave</option>
			<option>Casual</option>
			<option>Emergency</option>
			</select></td></tr>
			<tr><th>Description</th><td><textarea name="desc"></textarea></td></tr>
			<tr><th>Leave Start Date</th><td><input type="date" name="sdate"></td></tr>
			<tr><th>Leave End Date</th><td><input type="date" name="edate"></td></tr>
			</table>
			<input type="submit" name="submit" value="Submit">
			<br><br><br>NOTE:<br>
			*Contact Number must contain numbers only<br>
			*LEAVE Start Date must be date tomorrow onwards<br>
			*LEAVE End date must not be less than Leave Start Dates
			</center> -->
		
		<input type="submit" name="sick" value="Sick Leave/Maternity">
		<input type="submit" name="casual" value="Casual Leave">
		<input type="submit" name="emergency" value="Emergency Leave">
		
		
		</form>
		<form action="leave_request.php" method="post">
		<?php
if(isset($_POST['sick']))
{
echo "<center>
			<table>
			<tr><th>Name</th><td><input type='text' name='usernamebox' id='usernamebox' value='$name' readonly></input></td></tr>
			<tr><th>Reason for Leaving</th><td><input type='text' value='Sick Leave/Maternity' name='leave' readonly></td></tr>
			<tr><th>Description</th><td><textarea name='desc'></textarea></td></tr>
			<tr><th>Leave Start Date</th><td><input type='date' name='sdate'></td></tr>
			<tr><th>Leave End Date</th><td><input type='date' name='edate'></td></tr>
			</table>
			<input type='submit' name='submit' value='Submit'>
			<br><br><br>NOTE:<br>
			*LEAVE Start Date must be date tomorrow onwards<br>
			*LEAVE End date must not be less than Leave Start Dates
			</center>";

}

if(isset($_POST['casual']))
{
echo "<center>
			<table>
			<tr><th>Name</th><td><input type='text' name='usernamebox' id='usernamebox' value='$name' readonly></input></td></tr>
			<tr><th>Reason for Leaving</th><td><input type='text' value='Casual' name='leave' readonly></td></tr>
			<tr><th>Description</th><td><textarea name='desc'></textarea></td></tr>
			<tr><th>Leave Start Date</th><td><input type='date' name='sdate'></td></tr>
			<tr><th>Leave End Date</th><td><input type='date' name='edate'></td></tr>
			</table>
			<input type='submit' name='submit' value='Submit'>
			<br><br><br>NOTE:<br>
			*LEAVE Start Date must be date tomorrow onwards<br>
			*LEAVE End date must not be less than Leave Start Dates
			</center>
";
}
if(isset($_POST['emergency']))
{
echo "

<center>
			<table>
			<tr><th>Name</th><td><input type='text' name='usernamebox' id='usernamebox' value='$name' readonly></input></td></tr>
			<tr><th>Reason for Leaving</th><td><input type='text' value='Emergency' name='leave' readonly></td></tr>
			<tr><th>Description</th><td><textarea name='desc'></textarea></td></tr>
			<tr><th>Leave Start Date</th><td><input type='date' name='sdate'></td></tr>
			<tr><th>Leave End Date</th><td><input type='date' name='edate'></td></tr>
			</table>
			<input type='submit' name='submit' value='Submit'>
			<br><br><br>NOTE:<br>
			*LEAVE Start Date must be date tomorrow onwards<br>
			*LEAVE End date must not be less than Leave Start Dates
			</center>
";
}
		?>
		</form>
		
		
<?php
logged_in();
$id=$_SESSION['id'];
$msg="";
if(isset($_POST['submit'])){
$leave=$_POST['leave'];
$name=$_POST['usernamebox'];
$desc=$_POST['desc'];
$sdate=$_POST['sdate'];
$edate=$_POST['edate'];
$date=date("Y-m-d");


$startTimeStamp = strtotime($sdate);
$endTimeStamp = strtotime($edate);

$timeDiff = abs($endTimeStamp - $startTimeStamp);
$numberDays = $timeDiff/86400;


if($leave=='Sick Leave/Maternity'){
if($numberDays>42)
{
	echo"<script type='text/javascript'> alert('Your Request is over the limit of 42 days') </script>";
}
elseif($sdate<$date)
{
	echo"<script> alert('INVALID LEAVE START DATE') </script>";
	redirect_to('leave_request.php');
}
elseif($edate<$sdate)
{
echo"<script> alert('INVALID LEAVE END DATE') </script>";
redirect_to('leave_request.php');
}
else{
$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Passed Leave Request','Successfull')");
$query="INSERT INTO tb_leave VALUES('','$e_email','$leave','$name','$sdate','$edate','PENDING','$desc','0','$numberDays')";
$result=mysql_query($query);
$msg="Please wait for the admin to approve you leave request!";	
}
}



if($leave=='Casual'){
if($sdate<$date)
{
	echo"<script> alert('INVALID LEAVE START DATE') </script>";
	
}
elseif($edate<$sdate)
{
echo"<script> alert('INVALID LEAVE END DATE') </script>";

}
elseif($e_casual==0)
{
	echo"<script> alert('You have ZERO remaining casual leave') </script>";
}
else{
$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Passed Leave Request','Successfull')");
$query="INSERT INTO tb_leave VALUES('','$e_email','$leave','$name','$sdate','$edate','PENDING','$desc','0','$numberDays')";
$result=mysql_query($query);
$msg="Please wait for the admin to approve you leave request!";	
}
}

if($leave=='Emergency'){
if($numberDays>5)
{
	echo"<script type='text/javascript'> alert('Your Request is over the limit of 5 days') </script>";
}
elseif($sdate<$date)
{
	echo"<script> alert('INVALID LEAVE START DATE') </script>";
	
}
elseif($edate<$sdate)
{
echo"<script> alert('INVALID LEAVE END DATE') </script>";
}
elseif($e_emer==0)
{
	echo"<script> alert('You have ZERO remaining emergency leave') </script>";
}
else{
$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Passed Leave Request','Successfull')");
$query="INSERT INTO tb_leave VALUES('','$e_email','$leave','$name','$sdate','$edate','PENDING','$desc','0','$numberDays')";
$result=mysql_query($query);
$msg="Please wait for the admin to approve you leave request!";	
}
}



}


?>
		
	</div>
</div>
<div class="wrapper">
	<div id="three-column" class="container">
		<div><span class="arrow-down"></span></div>
						

	</div>
</div>
<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>

</body>
</html>