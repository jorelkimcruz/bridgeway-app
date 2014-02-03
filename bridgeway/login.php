<!-- START SESSION AND CONNECTION -->
<?php require_once("includes/db_connect.php"); ?>
<?php include_once("includes/functions.php"); ?>
<?php include_once("includes/session.php"); ?>

<?php logged_in();
//var_dump($_SESSION['id']);
	// To redirect to correct user page
if (isset($_SESSION['id'])) {
    if ($_SESSION['level']=='1'){
				redirect_to('admin/super_admin_index.php');
				}
				else if ($_SESSION['level']=='2'){
					redirect_to('employee/employee_index.php');
				}
				else if ($_SESSION['level']=='3'){
					redirect_to('customer/customer_index.php');
				}
				else if ($_SESSION['level']=='4'){
							 redirect_to('admin/os_admin_index.php');
				}
				
				else if ($_SESSION['level']=='5'){
					 redirect_to('admin/os_admin_index.php');
				}
				
				else if ($_SESSION['level']=='6'){
					 redirect_to('admin/emp_admin_index.php');
				}
				else if ($_SESSION['level']=='7'){
					 redirect_to('accounting/view_payable.php');
				}
}


include_once("includes/form_functions.php");

	
	// START FORM PROCESSING
	if (isset($_POST['submit'])) {
		// Form has been submitted.
		$errors = array();
//var_dump($_POST['username']);		
		// perform validations on the form data
		$required_fields = array('username', 'password');
		$errors = array_merge((array)$errors, (array)(check_required_fields($required_fields, $_POST)));
//var_dump($_POST['username']);
		$fields_with_lengths = array('username' => 30, 'password' => 30);
		$errors = array_merge($errors, check_max_field_lengths($fields_with_lengths, $_POST));

		$username = trim(mysql_prep($_POST['username']));
		$password = trim(mysql_prep($_POST['password']));
	
		if ( empty($errors) ) {
			// Check database to see if username and the hashed password exist there.
			$query = "SELECT *";
			$query .= "FROM tb_user ";
			$query .= "WHERE username = '{$username}' ";
			$query .= "AND password = '{$password}' ";
			$query .= "LIMIT 1";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			if (mysql_num_rows($result_set) == 1) {
				// username/password authenticated
				// and only 1 match
				$found_user = mysql_fetch_array($result_set);
				$_SESSION['id'] = $found_user['id'];
				$_SESSION['username'] = $found_user['username'];
				$_SESSION['level'] = $found_user['level'];
				//var_dump($_SESSION['position']);
				//DETERMINE THE NEXT VALUE OF AUTO_INCREMENT IN TB_AUDIT_TRAIL_LOGGING
				$auto_increment="SHOW TABLE STATUS LIKE 'tb_audit_trail'";
				$result_set=mysql_query($auto_increment);
				confirm_query($result_set);
				$auto_increment_value = mysql_fetch_array($result_set);
				$_SESSION['logging_no'] = $auto_increment_value['Auto_increment'];
				// INSERT TIME-IN FOR AUDIT TRAIL				
				$user_id = $_SESSION['id'];
				$logging_no = $_SESSION['logging_no'];
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Login','Successful');";
				$result_set=mysql_query($audit_query);
				confirm_query($result_set);
				
				
				// To know if Manager or Employee
				$position = $_SESSION['position'];
				if ($_SESSION['level']=='1'){
				redirect_to('admin/super_admin_index.php');
				}
				else if ($_SESSION['level']=='2'){
					redirect_to('employee/employee_index.php');
				}
				else if ($_SESSION['level']=='3'){
								redirect_to('customer/customer_index.php');
				}
				else if ($_SESSION['level']=='4'){
									redirect_to('admin/os_admin_index.php');
				}
				
				else if ($_SESSION['level']=='5'){
										redirect_to('customer/customer_index.php');
				}
				
				else if ($_SESSION['level']=='6'){
						 redirect_to('admin/emp_admin_index.php');
				}
					else if ($_SESSION['level']=='7'){
					 redirect_to('accounting/view_payable.php');
				}
				
			}
			else {
				echo "<script language='JavaScript' type='text/javascript'>";
				echo " alert('Username and Password combination incorrect.Please make sure your caps lock key is off and try again.')"; 	                echo "</script>";
				// username/password combo was not found in the database
				$message = "Username/password combination incorrect.";
			}
		}
		else
		{
			if (count($errors) == 1) {
				$message = "There was 1 error in the form.";
			} else {
				$message = "There were " . count($errors) . " errors in the form.";
			}
		}
		
	}
	else { // Form has not been submitted.
		if (isset($_GET['logout']) && $_GET['logout'] == 1) {
			$message = "You are now logged out.";
		} 
		$username = "";
		$password = "";
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
