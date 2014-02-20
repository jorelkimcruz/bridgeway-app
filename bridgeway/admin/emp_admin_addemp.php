<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php logged_in();

	// To redirect to correct user page

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
<form action="emp_admin_addemp.php" method="post">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="emp_admin_viewleave.php" >View Leave Request</a></li>
					<li><a href="emp_admin_viewemp.php" >View Employee</a></li>
					<li>Add Employee</li>
					<li><a href="emp_attendance.php" >View Attendance</a></li>
								<?php
					   if (isset($_SESSION['id'])) {
							$level=$_SESSION['level'];
							if($level==1)
							{?> 		<li><a href="super_admin_index.php" accesskey="4" title="">SuperAdmin Index</a></li> <?php }
					}
					?>
	
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
		<center>
		<h2>ADD EMPLOYEE</h2>
		<table border=2 cellpadding = 10>
		<tr><td>Firstname</td><td><input type="text" name="fname" required/></td></tr>
		<tr><td>Lastname</td><td><input type="text" name="lname" required/></td></tr>
		<tr><td>Middlename</td><td><input type="text" name="mname" required/></td></tr>
		<tr><td>Address</td><td><input type="text" name="add" required/></td></tr>
		<tr><td>Email</td><td><input type="text" name="email" required/></td></tr>
		<tr><td>Position</td><td><input type="text" name="pos" required/></td></tr>
		<tr><td>Department</td><td><input type="text" name="dept" required/></td></tr>
		<tr><td>Date Hired</td><td><input type="date" name="dateadd" required/></td></tr>
		<tr><td>Elementary School</td><td><input type="text" name="es" required/></td></tr>
		<tr><td>High School</td><td><input type="text" name="hs" required/></td></tr>
		<tr><td>College School</td><td><input type="text" name="cs" required/></td></tr>
		<tr><td>Contact Number</td><td>	<input type="text" name="contact" required/></td></tr>
		<tr><td><b>USER ACCOUNT</b></td></tr><br>
		<tr><td>Username</td><td>	<input type="text" name="user" required/></td></tr><br>
		<tr><td>Password</td><td>	<input type="password" name="pass" required/></td></tr><br>
	
		</table>
		<button type="submit" name="submit">Register</button>
		</center>
		
<?php


if(isset($_POST['submit'])){
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$mname=$_POST['mname'];
$add=$_POST['add'];
$email=$_POST['email'];
$pos=$_POST['pos'];
$dateadd=$_POST['dateadd'];
$dept=$_POST['dept'];
$es=$_POST['es'];
$hs=$_POST['hs'];
$cs=$_POST['cs'];
$contact=$_POST['contact'];
$user=$_POST['user'];
$pass=$_POST['pass'];

$tulogpapo=mysql_query("SELECT email FROM tb_user WHERE email='$email'");
if(mysql_num_rows($tulogpapo)>0)
{
echo "<script> alert('Email address already exist!')</script>";
}

else{
$kwi=mysql_query("INSERT INTO tb_audit_trail VALUES('','emp_admin',CURRENT_TIMESTAMP,'Authentication','Add UserAccount&Employee','Successfull')");
$kwiri=mysql_query("INSERT INTO tb_user VALUES('','2','$user','$pass','$fname','$lname','$contact','$email')");
$query=mysql_query("INSERT INTO tb_employee VALUES('','0','$fname','$lname','$mname','$add','$email','$pos','$dateadd','$dept','$es','$hs','$cs','','$contact','14','2','$dateadd')");
}
}
?>
		</div>
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
</form>
</body>
</html>