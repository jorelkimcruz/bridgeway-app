
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
$trydate=(date("Y-m-d"));



}
$msgs="<tr><th>NAME<td>$name</td><td><input type='hidden' name='usernamebox' id='usernamebox' value='$name'></input></td></th></tr>";


$kweere=mysql_query("SELECT casual_no, emergency_no FROM tb_employee WHERE email='$e_email'");
if(mysql_num_rows($kweere)>0)
{
$emp_fetch=mysql_fetch_array($kweere);
$e_casual=$emp_fetch['casual_no'];
$e_emer=$emp_fetch['emergency_no'];
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

		
	
		<a href="emp_sicl_leave.php">Sick Leave/Maternity</a>
		<a href="emp_cas_leave.php">Casual</a>
		<a href="emp_em_leave.php">Emergency</a>

		
		
<form action="emp_sicl_leave.php" method="post" enctype="multipart/form-data">
<center><table>



<tr><th>Name</th><td><input type='text' name='usernamebox' id='usernamebox' value='<?=$name?>' readonly></input></td></tr>
			<tr><th>Reason for Leaving</th><td><input type='text' value='Sick Leave/Maternity' name='leave' readonly></td></tr>
			<tr><th>Description</th><td><textarea name='desc'></textarea></td></tr>
			<tr>
<td>FileName: (2mb below required)</td><td><input type="file" name="file" id="file" required></td>
</tr>
			<tr><th>Leave Start Date</th><td><input type='date' name='sdate'></td></tr>
			<tr><th>Leave End Date</th><td><input type='date' name='edate'></td></tr>


</table>
</center>
<br>

<input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset">


<?php


if(isset($_POST['submit']))
{

  
$leave=$_POST['leave'];
$name=$_POST['usernamebox'];
$desc=$_POST['desc'];
$sdate=$_POST['sdate'];
$edate=$_POST['edate'];
$date=date("Y-m-d");


$startTimeStamp = strtotime($sdate);
$endTimeStamp = strtotime($edate);

$timeDiff = abs($endTimeStamp - $startTimeStamp);
$numberDays = $timeDiff/86400;


if($numberDays>42)
{
	echo"<script type='text/javascript'> alert('Your Request is over the limit of 42 days') </script>";
}
elseif($sdate<$date)
{
	echo"<script> alert('INVALID LEAVE START DATE') </script>";

}
elseif($edate<$sdate)
{
echo"<script> alert('INVALID LEAVE END DATE') </script>";

}
else{
$leave=$_POST['leave'];
$name=$_POST['usernamebox'];
$desc=$_POST['desc'];
$sdate=$_POST['sdate'];
$edate=$_POST['edate'];
$date=date("Y-m-d");
$allowedExts = array("pdf", "doc", "docx");
$temp = explode(".", $_FILES["file"]["name"]);
$extension = end($temp);
$filename=$_FILES["file"]["name"];
if (($_FILES["file"]["type"] == "application/pdf") || ($_FILES["file"]["type"] == "application/msword") || ($_FILES["file"]["type"] == "application/vnd.openxmlformats-officedocument.wordprocessingml.document") && ($_FILES["file"]["size"] < 20000000) && in_array($extension, $allowedExts))
    {
  if ($_FILES["file"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
	echo "<script>alert('ERROR UPLOAD');</script>";
	
    }
  else
    {

    if (file_exists("upload/" . $_FILES["file"]["name"]))
      {
      echo $_FILES["file"]["name"] . " already exists. ";
	  echo "<script>alert('EXIST');</script>";
      }
    else
      {
      move_uploaded_file($_FILES["file"]["tmp_name"],
      "upload/" . $_FILES["file"]["name"]);
	  
$kwiri=mysql_query("INSERT INTO tb_audit_trail VALUES('','$id',CURRENT_TIMESTAMP,'Authentication','Passed Leave Request','Successfull')");
$query="INSERT INTO tb_leave VALUES('','$e_email','$leave','$name','$sdate','$edate','PENDING','$desc','0','$filename','$numberDays')";
$result=mysql_query($query);

$msg="Please wait for the admin to approve you leave request!";	
      echo "Stored in: " . "upload/" . $_FILES["file"]["name"];
	  echo "FILE".$result;
	  
echo "<script>alert('Record successfuly saved.');</script>";
      }
    }
  }
else
  {
  echo "Invalid file";
  }
  

}
}
?>
</form>   
		
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
