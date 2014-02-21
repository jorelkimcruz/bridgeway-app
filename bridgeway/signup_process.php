<?php
session_start();
include("includes/db_connect.php");

//customer info
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
$username = $_POST['username'];
$password = $_POST['password'];

$check_user = mysql_query("SELECT username FROM `tb_user` WHERE username = '$username'")or die(mysql_error());
$checkrows = mysql_num_rows($check_user);

if($checkrows >= '1'){

echo "<script> alert('Username Already exists..'); location = 'signup.php';</script>";
}else{

//INSERT INTO record of Customer
$add_customer = mysql_query("INSERT INTO `tb_user`(
`level` ,
`first_name` ,
`middle_name` ,
`last_name` ,
`contact_no` ,
`address` ,
`email` ,
`gender` ,
`civil_status` ,
`religion` ,
`citizenship` ,
`emergency_name` ,
`emergency_no` ,
`emergency_address` ,
`relationship` ,
`username` ,
`password` 
)
VALUES (
3,
'$firstname',
'$middlename',
'$lastname',
'$contact',
'$address',
'$email',
'$gender',
'$civil',
'$religion',
'$citizenship',
'$e_name',
'$e_number',
'$e_address',
'$relationship',
'$username',
'$password')")or die(mysql_error());

echo "<script> alert('Successfully!'); location = 'signup.php';</script>";
}
?>