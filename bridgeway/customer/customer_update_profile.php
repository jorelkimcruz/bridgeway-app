<?php
	include_once '../includes/db_connect.php';
    require_once("../includes/session.php");
	
if(isset($_POST['submit'])){	
	$id=$_POST['id'];
	$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$contact=$_POST['contact'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	
	$q="UPDATE tb_user SET first_name = '$firstname', 
	last_name = '$lastname', contact_no = '$contact',
	email = '$email', password = '$password' WHERE id = $id ";
	$exe=mysql_query($q) or die(mysql_error());
	
	echo "<script> alert('Profile successfully updated...'); location = 'customer_index.php';</script>";
}
?>