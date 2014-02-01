<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>

<?php
logged_in();
$id=$_SESSION['id'];

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
					<li ><a href="leave_request.php">Leave Request</a></li>
					<li class='active-tab'>Check Leave Request</li>
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
		<div class="title"><center>
			<table border=2 cellpadding = 10>
			<?php 
			$q = mysql_query("select * from tb_leave WHERE emp_id='$id'");
echo "<table border=2 cellpadding = 10 >
<tr>
<th> Reason </th>
<th> Employee Name </th>
<th> Contact Number </th>
<th> Start Date</th>
<th> End Date</th>
<th> Request Status</th>
</tr>";
while($r = mysql_fetch_array($q))
{	
	echo "<tr> ";
	echo "<td>" .$r['reason']. " </td>";
	echo "<td>" .$r['emp_name']. " </td>";
	echo "<td>" .$r['contact_no']. " </td>";
	echo "<td>" .$r['start_date']. " </td>";
	echo "<td>" .$r['end_date']. " </td>";
	echo "<td>" .$r['status']. "</td>";
	echo "</tr>";
}
echo "</table>";
			?>
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
</body>
</html>