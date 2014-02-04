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
<form action="super_admin_addadmin.php" method="POST">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="#" accesskey="1" title="">TAB</a></li>
					<li><a href="#" accesskey="2" title="">TAB</a></li>
					<li><a href="#" accesskey="3" title="">TAB</a></li>
					<li>Add Admin</li>
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
		<table>
			<tr><td>LEVEL:</td><td><select name="level">
			<option>Choose Admin Level</option>
			<option>EMS admin</option>
			<option>OMS admin</option>
			<option>AMS admin</option>
			</select></td></tr>
			<tr><td>Username</td><td><input type="text" name="user" required/></td></tr>
			<tr><td>Password</td><td><input type="password" name="pass" required/></td></tr>
			<tr><td>Firstname</td><td><input type="text" name="fname" required/></td></tr>
			<tr><td>Lastname</td><td><input type="text" name="lname" required/></td></tr>
			<tr><td>Contact Number</td><td><input type="text" name="contact" required/></td></tr>
			<tr><td>Email</td><td><input type="text" name="email" required/></td></tr>
		</table>
		<input type="submit" name="add" value="Submit">
		</center>
		
<?php
if(isset($_POST['add']))
{
$l="";
$level=$_POST['level'];
$user=$_POST['user'];
$pass=$_POST['pass'];
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$contact=$_POST['contact'];
$email=$_POST['email'];

if($level=="Choose Admin Level")
{
echo "<script>alert('Please Choose Admin Level')</script>";
redirect_to('super_admin_addadmin.php');
}
if($level=='EMS admin')
{
$l=6;
}
if($level=='OMS admin')
{
$l=4;
}
if($level=='AMS admin')
{
$l=5;
}


if(!ctype_alpha($fname))
{
echo "<script>alert('Firstname must be letters only')</script>";
}
elseif(!ctype_alpha($lname))
{
echo "<script>alert('Lastname must be letters only')</script>";
}
elseif(!is_numeric($contact))
{
echo "<script>alert('Lastname must be letters only')</script>";
}
elseif((!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$email)))
{
echo "<script>alert('Please put valid email')</script>";
}
else
{
$kwi=mysql_query("INSERT INTO tb_audit_trail VALUES('','super admin',CURRENT_TIMESTAMP,'Authentication','Add Admin Account','Successfull')");
$query=mysql_query("INSERT INTO tb_user VALUES('','$l','$user','$pass','$fname','$lname','$contact','$email')");


// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Delete Customer','Successful');";
				$result = mysql_query($audit_query);

echo "<script>alert('ADD ADMIN SUCCESSFULLY')</script>";
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