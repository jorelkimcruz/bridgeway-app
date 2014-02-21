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
		<table align="center" border="0">
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
	<td colspan="5"><font style="text-decoration:underline;" size="3">Personal Information</font></td>
</tr>

<tr>
    <td><font color="#FF0000">*</font>Name:</td>
    <td colspan="3">
    	<font color="#FF0000">*</font><input type="text"  name="fname"  placeholder="First Name" required/>	
    	<font color="#FF0000">*</font><input type="text"  name="mname" placeholder="Middle Name"/>
   		<font color="#FF0000">*</font><input type="text"  name="lname" placeholder="Last Name" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Gender:</td>
    <td><input type="radio" name="gender" value="male" required/> 
	Male<input type="radio" name="gender" value="female"/> Female </td>
    <td></td>
    <td></td>
</tr>

<tr>
    <td><font color="#FF0000">*</font>Citizenship:</td>
    <td><input type="text" name="citizen" placeholder="" required/>
    <td><font color="#FF0000">*</font>Civil Status:</td>
    <td>
    <select name="civil_status">
    <option value="Single" selected="selected">Single</option>
    <option value="Married">Married</option>
    <option value="Widowed">Widowed</option>
    </select>
    </td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Religion:</td>
    <td><input type="text" name="religion" /></td>
    <td><font color="#FF0000">*</font>Email Address</td>
    <td><input type="email" name="email" /></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Address:</td>
    <td colspan="3"><input type="text" size="68"  name="add" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact No.</td>
    <td><input type="text" name="contact" required/></td>
 </tr>
<tr>
    <td>Position</td><td><input type="text" name="pos" required/></td>
    <td>Department</td><td><input type="text" name="dept" required/></td>
</tr>
<tr>
    <td>Date Hired</td><td><input type="date" name="dateadd" required/></td>
</tr>
<tr>	
	<td>Elementary School</td><td><input type="text" name="es" required/></td>
</tr>
<tr>	
	<td>High School</td><td><input type="text" name="hs" required/></td>
</tr>
<tr>	
	<td>College School</td><td><input type="text" name="cs" required/></td>
</tr>
<tr>
    <td colspan="5"><font style="text-decoration:underline;" size="3">In Case of Emergency</font></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact Name:</td>
    <td><input type="text" name="e_name" required/></td>
    <td><font color="#FF0000">*</font>Contact Address:</td>
    <td><input type="text" name="e_address" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact Number:</td>
    <td><input type="text" name="e_number" required /></td>
    <td><font color="#FF0000">*</font>Relationship:</td>
    <td><input type="text" name="relationship" required/></td>
</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
	<td></td>
</tr>
<tr>
    <td colspan="5"><font style="text-decoration:underline;" size="3">User Account</font></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td>Username:</td>
    <td><input id="name" type="text" name="user" value="" required/></td>
</tr>
<tr>
    <td>Password:</td>
    <td><input id="name" type="password" name="pass" value="" required/></td>
</tr>
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

$gender = $_POST['gender'];
$civil = $_POST['civil_status'];
$citizenship = $_POST['citizen'];
$religion = $_POST['religion'];
$e_name = $_POST['e_name'];
$e_number = $_POST['e_number'];
$e_address = $_POST['e_address'];
$relationship = $_POST['relationship'];

$tulogpapo=mysql_query("SELECT email FROM tb_user WHERE email='$email' and level=2");
if(mysql_num_rows($tulogpapo)>0)
{
echo "<script> alert('Email address already exist!')</script>";
}

else{
$kwi=mysql_query("INSERT INTO tb_audit_trail VALUES('','emp_admin',CURRENT_TIMESTAMP,'Authentication','Add UserAccount&Employee','Successfull')");
$kwiri=mysql_query("INSERT INTO tb_user VALUES('','2','$user','$pass','$fname','$mname','$lname','$contact', '$add','$email', '$gender', '$civil',
					'$religion','$citizenship','$e_name','$e_number','$e_address', '$relationship')");
$query=mysql_query("INSERT INTO tb_employee VALUES('','0','$fname','$lname','$mname','$add','$email','$pos','$dateadd','$dept','$es','$hs','$cs','','$contact','14','5','$dateadd')");
echo "<script> alert('Successfully')</script>";
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