<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php include_once("../includes/functions.php"); ?>

<?php
logged_in();
$id=$_SESSION['id'];
$msg="";
if(isset($_POST['submit'])){
$leave=$_POST['leave'];
$name=$_POST['usernamebox'];
$cno=$_POST['cno'];
$sdate=$_POST['sdate'];
$edate=$_POST['edate'];
$date=date("Y-m-d");

if(!is_numeric($cno))
{
	echo"<script> alert('Contact number must be numbers only') </script>";
	redirect_to('leave_request.php');
	
}
elseif($sdate<$date)
{
	echo"<script> alert('INVALID LEAVE START DATE') </script>";
	redirect_to('leave_request.php');
}
elseif($edate<$sdate)
{
echo"<script> alert('INVALID LEAVE END DATE') </script>";
redirect_to('leave_request.php');
}
else{
$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Passed Leave Request','Successfull')");
$query="INSERT INTO tb_leave VALUES('','$id','$leave','$cno','$name','$sdate','$edate','PENDING')";
$result=mysql_query($query);
$msg="Please wait for the admin to approve you leave request!";	
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
<form method="GET">
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li class='active-tab'>Leave Request</li>
					<li><a href="emp_check_leave_request.php"  >Check Leave Request</a></li>
					<li><a href="emp_profile.php" >Profile</a></li>
					<li><a href="../logout.php" >Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>RECORD SAVED!</h2>
		<?php echo $msg; ?>
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