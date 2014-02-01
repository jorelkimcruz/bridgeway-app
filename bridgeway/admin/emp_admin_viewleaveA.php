<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<form method="post">
<?php logged_in();
$asa=$_GET['id'];
$btn="";
$btn1="";
$btn2="";
$msg_admin="";



$query=mysql_query("SELECT *
FROM tb_leave
where id='$asa' ");
if(mysql_num_rows($query)>0){
	$job_fetch=mysql_fetch_array($query);
	$f_id=$job_fetch['id'];
	$f_admin_id=$job_fetch['emp_id'];
		$f_admins_id=$job_fetch['id'];
		$f_reason=$job_fetch['reason'];
		$f_name=$job_fetch['emp_name'];
		$f_contact=$job_fetch['contact_no'];
		$f_sdate=$job_fetch['start_date'];
		$f_edate=$job_fetch['end_date'];
		
		$btn="<button type='submit' name='submit' id='submit'> Accept Request</button> &nbsp;";	
		$btn1="<button type='submit' name='submit1'> Decline Request</button> &nbsp;";	
		

$msg_admin="
<tr><td>$f_name</td>	
<td>$f_reason</td>
<td>$f_contact</td>		
<td>$f_sdate</td>
<td>$f_edate</td></tr>		
";



}
if(isset($_POST['submit'])){
	$query=mysql_query("UPDATE tb_leave SET status='Accepted' WHERE id='$f_id' ");
	header("Location:emp_admin_viewleave.php");
	}
if(isset($_POST['submit1'])){
	$query=mysql_query("UPDATE tb_leave SET status='Decline' WHERE id='$f_id' ");
	header("Location:emp_admin_viewleave.php");
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
			<h2>EMPLOYEE ADmin INDEX<?php echo $asa; ?></h2>
			<center>
			<table border=2 cellpadding = 10>
			<tr><th>Name</th>
			<th>Reason</th>
			<th>Contact Number</th>
			<th>Start Date</th>
			<th>End Date</th>
			<?php echo $msg_admin; ?>
			</table>
			<?php echo $btn; echo $btn1; echo $btn2; ?>
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