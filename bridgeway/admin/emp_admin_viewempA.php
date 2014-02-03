<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php logged_in();
$msg_admin="";
$asa=$_GET['id'];
	$select=mysql_query("SELECT * FROM tb_employee WHERE id='$asa'");
	if(mysql_num_rows($select)>0){
		while($f_admin=@mysql_fetch_array($select)){
		$f_id=$f_admin['id'];
		$f_user_id=$f_admin['user_id'];
		$f_fname=$f_admin['firstname'];
		$f_lname=$f_admin['lastname'];
		$f_mname=$f_admin['middlename'];
		$f_address=$f_admin['address'];
		$f_email=$f_admin['email'];
		$f_position=$f_admin['position'];
		$f_date=$f_admin['date_hired'];
		$f_dept=$f_admin['department'];
		$f_elem=$f_admin['elem_school'];
		$f_hs=$f_admin['h_school'];
		$f_cs=$f_admin['c_school'];
		$f_status=$f_admin['status'];
		$f_contact=$f_admin['contact_no'];
		$msg_admin.="
		<tr><th>Firstname<td>$f_fname</td></th>
		<tr><th>Lastname<td>$f_lname</td></th>
		<tr><th>Middlename<td>$f_mname</td></th>
		<tr><th>Address<td>$f_address</td></th>
		<tr><th>Email<td>$f_email</td></th>
		<tr><th>Position<td>$f_position</td></th>
		<tr><th>Department<td>$f_elem</td></th>
		<tr><th>Elementary School<td>$f_hs</td></th>
		<tr><th>High School<td>$f_hs</td></th>
		<tr><th>College School<td>$f_cs</td></th>
		<tr><th>Contact Number<td>$f_contact</td></th>
		</tr>
		";
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
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="emp_admin_viewleave.php" >View Leave Request</a></li>
					<li>View Employee</li>
					<li><a href="emp_admin_addemp.php" >Add Employee</a></li>
					<li><a href="emp_attendance.php" >View Attendance</a></li>
					<li><a href="#" >Audit Trail</a></li>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
		<center><h2>Employee Details</h2>
			<table border=2 cellpadding = 10 >
			<?php echo $msg_admin; ?>
			</table><br>
			<form action="emp_admin_viewempB.php" method="POST">
			<b>View Attendance of this Employee<br>
			<input type="hidden" name="asa" value="<?php echo $asa; ?>"><br>
			From:<input type="date" name="fdate"><br>
			To:<input type="date" name="tdate"><br>
			<input type="submit" name="submitdate" value="SUBMIT"><br>
			</b>
			</form>
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
</body>
</html>