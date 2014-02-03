
<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>
<?php 
logged_in();
     if (!isset($_SESSION['id'])) {
		 redirect_to('customer_index.php');
	  }
?>
<?php


if(isset($_POST['submit']))
{
$id=$_POST['customer_id'];
$user_id=$_SESSION['id'];
$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$contact=$_POST['contact'];
	$email=$_POST['email'];
	$password=$_POST['password'];

	$q="UPDATE tb_user SET first_name = '$firstname', 
	last_name = '$lastname', contact_no = '$contact',
	email = '$email', password = '$password' WHERE id = $id ";
	$exe=mysql_query($q) or die(mysql_error());
	
	
      
    // INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Update customer profile','Successful');";
				$result = mysql_query($audit_query);
				
				echo "<script>alert('Update successfuly.');window.location.href='os_admin_customers.php';</script>";
  }
?>