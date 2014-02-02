<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php logged_in();

$msg_admin="";
	$select=mysql_query("SELECT * FROM tb_leave WHERE status='Accepted'");
	if(mysql_num_rows($select)>0){
		while($f_admin=@mysql_fetch_array($select)){
		$f_id=$f_admin['id'];
		$f_admin_id=$f_admin['emp_id'];
		$f_admins_id=$f_admin['id'];
		$f_reason=$f_admin['reason'];
		$f_name=$f_admin['emp_name'];
		$f_contact=$f_admin['contact_no'];
		$f_sdate=$f_admin['start_date'];
		$f_edate=$f_admin['end_date'];
	
		$msg_admin.="<tr><td>$f_name</td>
		<td>$f_reason </td><td>$f_contact </td><td>$f_sdate</td><td>$f_edate</td></tr>
		";
		}

	}
	
	if(isset($_POST['submit'])){
	$query=mysql_query("UPDATE tb_leave SET status='Accepted' WHERE id='$f_id' ");
	echo "<meta http-equiv='refresh' content='1' >";
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
<form action="emp_admin_viewleave.php" method="post">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li>View Leave Request</li>
					<li><a href="emp_admin_viewemp.php" >View Employee</a></li>
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
<a href="emp_admin_viewleave.php">[PENDING LEAVE]</a><a href="emp_admin_viewleaveDECLINE.php">[DECLINED LEAVE]</a>
			<h2>ACCEPTED REQUEST</h2>
			<center>
			<table border=2 cellpadding = 10>
			<tr><th>Name</th>
			<th>Reason</th>
			<th>Contact Number</th>
			<th>Start Date</th>
			<th>End Date</th>
			</tr>
			<?php echo $msg_admin;?>
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