<?php require_once("../includes/db_connect.php"); ?>
<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>


<?php
logged_in();
$id=$_SESSION['id'];
$print="";
$btn1="";
$btn2="";
$btn3="";
$btn4="";
$btn5="";
$btn6="";
$time=time();
$msg="";

$query=mysql_query("SELECT * FROM tb_user WHERE id='$id'");
if(mysql_num_rows($query)>0)
{
$emp_fetch=mysql_fetch_array($query);
$e_id=$emp_fetch['id'];
$e_username=$emp_fetch['username'];
$e_password=$emp_fetch['password'];
$e_fname=$emp_fetch['first_name'];
$e_lname=$emp_fetch['last_name'];
$e_contact=$emp_fetch['contact_no'];
$e_email=$emp_fetch['email'];
}


$btn1="<button type='submit' name='submit1'>Update Username</button>";
$btn2="<button type='submit' name='submit2'>Update Firstame</button>";
$btn3="<button type='submit' name='submit3'>Update Lastame</button>";
$btn4="<button type='submit' name='submit4'>Update Contact</button>";
$btn5="<button type='submit' name='submit5'>Update Email</button>";
$btn6="<button type='submit' name='submit6'>Update Password</button>";
$print= "
		<tr><th>Username<td>$e_username</td><td><input type='text' name='usernamebox' id='usernamebox'></input></td><td>$btn1</td></th></tr>
		<tr><th>Password<td>*****</td><td><input type='password' name='passbox' id='passbox'></input></td><td>$btn6</td></th></tr>
		<tr><th>Firstname<td>$e_fname</td><td><input type='text' name='fnamebox' id='fnamebox'></td><td>$btn2</td></th></tr>
		<tr><th>Lastname<td>$e_lname</td><td><input type='text' name='lastnamebox' id='lastnamebox'></td><td>$btn3</td></th></tr>
		<tr><th>Contact<td>$e_contact</td><td><input type='text' name='contactbox' id='contactbox'></td><td>$btn4</td></th></tr>
		<tr><th>Email<td>$e_email</td><td><input type='text' name='emailbox' id='emailbox'></td><td>$btn5</td></th></tr>
		
		";
		
		
		
		

if(isset($_POST['submit1']))
{	$un=$_POST['usernamebox'];
	//$s_username=mysql_real_escape_string($_POST['usernamebox']);
	$select=mysql_query("SELECT * FROM tb_user WHERE username='$un' ");
	if(mysql_num_rows($select)<=0){
	$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Edit Profile','Successfull')");
	$query=mysql_query("UPDATE tb_user SET username='$un' WHERE id='$id' ");
	echo "<meta http-equiv='refresh' content='1' >";
	}
}
elseif(isset($_POST['submit6']))
{	$un=$_POST['passbox'];
	//$s_username=mysql_real_escape_string($_POST['usernamebox']);
	$select=mysql_query("SELECT * FROM tb_user WHERE password='$un' ");
	if(mysql_num_rows($select)<=0){
	$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Edit Profile','Successfull')");
	$query=mysql_query("UPDATE tb_user SET password='$un' WHERE id='$id' ");
	echo "<meta http-equiv='refresh' content='1' >";
	}
}
	
elseif(isset($_POST['submit2']))
{					$un=$_POST['fnamebox'];
					if(ctype_alpha($un))
					{
					$select=mysql_query("SELECT * FROM tb_user WHERE first_name='$un' ");
					if(mysql_num_rows($select)<=0){
					$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Edit Profile','Successfull')");
					$query=mysql_query("UPDATE tb_user SET first_name='$un' WHERE id='$id' ");
					echo "<meta http-equiv='refresh' content='1' >";
					}
					}
					elseif(!ctype_alpha($un))
					{
					echo"<script> alert('First name must be letters only') </script>";
					}
}

elseif(isset($_POST['submit3']))
{					$un=$_POST['lastnamebox'];
					if(ctype_alpha($un))
					{
					$select=mysql_query("SELECT * FROM tb_user WHERE last_name='$un' ");
					if(mysql_num_rows($select)<=0){
					$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Edit Profile','Successfull')");
					$query=mysql_query("UPDATE tb_user SET last_name='$un' WHERE id='$id' ");
					echo "<meta http-equiv='refresh' content='1' >";
					}
					}
					elseif(!ctype_alpha($un))
					{
					echo"<script> alert('Last name must be letters only') </script>";
					}
}
	
elseif(isset($_POST['submit4']))
{	
					$un=$_POST['contactbox'];
					if(is_numeric($un))
					{
					$select=mysql_query("SELECT * FROM tb_user WHERE contact_no='$un' ");
					if(mysql_num_rows($select)<=0){
					$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Edit Profile','Successfull')");
					$query=mysql_query("UPDATE tb_user SET contact_no='$un' WHERE id='$id' ");
					echo "<meta http-equiv='refresh' content='1' >";
					}
					}
					elseif(!is_numeric($un))
					{
					echo"<script> alert('Contact number must be numbers only') </script>";
					}
					
}
	
	elseif(isset($_POST['submit5']))
{	

					$un=$_POST['emailbox'];
					if((preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$un)))
					{
					$select=mysql_query("SELECT * FROM tb_user WHERE email='$un' ");
					if(mysql_num_rows($select)<=0){
					$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Edit Profile','Successfull')");
					$query=mysql_query("UPDATE tb_user SET email='$un' WHERE id='$id' ");
					echo "<meta http-equiv='refresh' content='1' >";
					}
					}
					elseif(!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$un))
					{
					echo"<script> alert('Invalid Email Format') </script>";
					}
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
<form action="emp_profile.php" method="POST">

<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="leave_request.php"  >Leave Request</a></li>
					<li><a href="emp_check_leave_request.php"  >Check Leave Request</a></li>
					<li class='active-tab'>Profile</li>
					<li><a href="../logout.php" >Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
		<center>
		<table class="table tbl-content" colspan="4">
		<?php echo "$print"; ?>
		
		
		
	</table>
	</center>
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