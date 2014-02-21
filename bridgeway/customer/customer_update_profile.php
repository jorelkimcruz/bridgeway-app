<?php
	include_once '../includes/db_connect.php';
    require_once("../includes/session.php");
	
if(isset($_POST['submit'])){	
	$id=$_POST['id'];
	$firstname = $_POST['firstname'];
	$middlename = $_POST['middlename'];
	$lastname = $_POST['lastname'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$contact = $_POST['contact'];
	$gender = $_POST['gender'];
	$civil = $_POST['civil_status'];
	$citizenship = $_POST['citizen'];
	$religion = $_POST['religion'];
	$e_name = $_POST['e_name'];
	$e_number = $_POST['e_number'];
	$e_address = $_POST['e_address'];
	$relationship = $_POST['relationship'];
	$password = $_POST['password'];
	
	$q="UPDATE tb_user SET first_name = '$firstname', 
	last_name = '$lastname', contact_no = '$contact',
	email = '$email', password = '$password', address = '$address',
	gender = '$gender', civil_status = '$civil', citizenship = '$citizenship',	
	religion = '$religion', emergency_name = '$e_name', emergency_no = '$e_number', 
	emergency_address = '$e_address', relationship = '$relationship' WHERE id = $id ";
	$exe=mysql_query($q) or die(mysql_error());
	
	// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$id',CURRENT_TIMESTAMP,'Authentication','Update Profile','Successful');";
				$result = mysql_query($audit_query);
	
	echo "<script> alert('Profile successfully updated...'); location = 'customer_profile.php';</script>";
}
?>