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
}
$msgs="<tr><th>NAME<td>$name</td><td><input type='hidden' name='usernamebox' id='usernamebox' value='$name'></input></td></th></tr>"
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
<form action="leave_reques_savet.php" method="POST">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li class='active-tab'>Leave Request</li>
					<li><a href="emp_check_leave_request.php"  >Check Leave Request</a></li>
					<li><a href="emp_profile.php" >Profile</a></li>
					<li><a href="emp_attendance.php" >My Attendance</a></li>
					<li><a href="../logout.php" >Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>LEAVE REQUEST</h2>
			</div>
			<center>
			<table>
			<?php echo $msgs; ?>
			<tr><th>Reason for Leaving</th><td><input type="text" name="leave"></td></tr>
			<tr><th>Contact Number</th><td><input type="text" name="cno"></td></tr>
			<tr><th>Leave Start Date</th><td>
			<select name="smonth">
			<?php for($m=1; $m<=12; $m++)echo "<option>$m</option>";?></select>
			<select name="sday"><?php for ($m=1; $m<=31; $m++)echo "<option>$m</option>";?> </select>
	<select name="syear">
	<?php
	for ($m=2050; $m>=2000; $m--)
		echo "<option>$m</option>";
	?> 	
			</select>
			</td></tr>
			<tr><th>Leave End Date</th><td>
			<select name="emonth">
			<?php
			for ($m=1; $m<=12; $m++)
			echo "<option>$m</option>";
			?></select>
	<select name="eday">
	<?php
	for ($m=1; $m<=31; $m++)
		echo "<option>$m</option>";
	?> 	
	</select>
	<select name="eyear">
	<?php
	for ($m=2050; $m>=2000; $m--)
		echo "<option>$m</option>";
	?> 	
			</select></td></tr>
			</table>
			<input type="submit" name="submit" value="Submit">
			</center>
		
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