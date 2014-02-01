<!-- START SESSION AND CONNECTION -->
<?php require_once("includes/db_connect.php"); ?>
<?php include_once("includes/functions.php"); ?>

<?php 
session_start();
date_default_timezone_set('Asia/Manila');
$timestamp = time();


if(isset($_POST['submit'])) {
	$username=$_POST['username'];
	$password= $_POST['password'];
	$_SESSION['password']=$pass;
	$_SESSION['username']=$user;

	//$search_user = "SELECT username from tb_user WHERE username='$username'";
	//$search_pass = "SELECT password from tb_user WHERE password='$password'";
	//$search_level = "SELECT first_name from tb_user WHERE username='$username'";
	//$user_result = mysql_query($search_user);
	//$pass_result = mysql_query($search_pass);	
	//$level_result = mysql_query($search_level);	
	$puta=mysql_query("SELECT * from tb_user WHERE username='$username' AND password='$password';");

	//if($username == mysql_fetch_row($user_result) || $password = mysql_fetch_row($pass_result))
	if(mysql_num_rows($puta) != 0 )
		{
		$s=@mysql_fetch_array($puta);
		$id=$s['id'];
		$level=$s['level'];
		$_SESSION['id'] = $id;	
		$_SESSION['level'] = $level;	
		if($level=='3'){
		header('Location:customer/customer_index.php');
		}
		elseif($level=='2'){
		header('Location:employee/employee_index.php');
		}
		elseif($level=='1'){
		header('Location:admin/super_admin_index.php');
		}
		elseif($level=='4'){
		header('Location:admin/os_admin_index.php');
		}
		elseif($level=='5'){
		header('Location:admin/as_admin_index.php');
		}
		elseif($level=='6'){
		header('Location:admin/emp_admin_index.php');
		}
		}
		else{
		echo"<script> alert('Your username and password do not match') </script>";
		}
		
		
	//elseif($username != mysql_fetch_row($user_result) || $password != mysql_fetch_row($pass_result)){
	//echo "<script> alert('Your username and password do not match') </script>";
	//}
	//elseif(empty($username) || empty($password)){
	//echo "<script> alert('Please complete the details above') </script>";
	//}
	
	
}


?>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bridge Way</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="index.html" accesskey="1" title="">Home</a></li>
					<li><a href="#" accesskey="2" title="">About Us</a></li>
					<li><a href="signup.php" accesskey="3" title="">Sign up</a></li>
					<li  class="current_page_item"><a href="login.php" accesskey="4" title="">Sign in</a></li>
					<li><a href="#" accesskey="5" title="">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Welcome to our website</h2>
		</div>
	</div>
</div>
<div class="wrapper">
	<div id="three-column" class="container">
		<div><span class="arrow-down"></span></div>
						<form action="" method="post">
						<center>
						<table><tr><td>User Name </td><td><input type = "text"  name= "username" required/>
						</td></tr><tr>
						<td>Password</td> <td><input type = "password"  name= "password"  required/>
						</td></tr><tr><td>
						</td><td><input type ="submit" value="Login" name="submit"><input type ="reset" value="Clear Entries" name="login"></td></tr></table>
						</center>
						</form>

	</div>
</div>
<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</body>
</html>
