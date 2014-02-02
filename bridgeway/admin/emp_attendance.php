<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php include_once("../includes/functions.php"); ?>


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
<form action="emp_attendance.php" method="POST">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="emp_admin_viewleave.php" >View Leave Request</a></li>
					<li><a href="emp_admin_viewemp.php" >View Employee</a></li>
					<li><a href="emp_admin_addemp.php" >Add Employee</a></li>
					<li>View Attendance</li>
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
		<input type="text" name="ctr" id="ctr">
		<button type='submit' name='submit1'>TIME IN</button>
		<button type='submit' name='submit2'>TIME OUT</button>

			
<?php
logged_in();
$id=$_SESSION['id'];




if(isset($_POST['submit1']))
{
$ctrs=$_POST['ctr'];
date_default_timezone_set("Asia/Manila");
$time=time();
$date=date('Y-m-d H:i:s',$time);
$query=mysql_query("SELECT * FROM tb_user WHERE id='$id'");
if(mysql_num_rows($query)>0)
{
$emp_fetch=mysql_fetch_array($query);
$e_id=$emp_fetch['id'];
$e_fname=$emp_fetch['first_name'];
$e_lname=$emp_fetch['last_name'];
$e_contact=$emp_fetch['contact_no'];
$e_email=$emp_fetch['email'];

$kriwi=mysql_query("INSERT INTO tb_attendance VALUES('','$e_fname','$date','','','$ctrs','in')");
}

}


$q = mysql_query("select * from tb_attendance WHERE job='in'");
echo "<table border=2 cellpadding = 10 >
<tr>
<th> Employee Number </th>
<th> Employee Name </th>
<th> Time_IN </th>
<th> Time_OUT</th>
<th> Date</th>
<th> Process</th>
<th> Process</th>
</tr>";
while($r = mysql_fetch_array($q))
{	
	echo "<tr> ";
	echo "<td>" .$r['emp_id']. " </td>";
	echo "<td>" .$r['emp_name']. " </td>";
	echo "<td>" .$r['time_in']. " </td>";
	echo "<td>" .$r['time_out']. " </td>";
	echo "<td>" .$r['date']. " </td>";
	echo "<td><input type='button' name='timeout' value='TIME OUT'></td>";
	echo "<td>" .$r['job']. " </td>";
	echo "</tr>";
}
echo "</table>";


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