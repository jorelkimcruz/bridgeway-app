<?php
session_start();
include("includes/db_connect.php");

//customer info
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$company = $_POST['company'];
$contact = $_POST['contact'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];

$check_user = mysql_query("SELECT username FROM `tbl_customer` WHERE username = '$username'")or die(mysql_error());
$checkrows = mysql_num_rows($check_user);

if($checkrows >= '1'){

echo "<script> self.location='signup.php?existing=1'; </script>";

}else{

//INSERT INTO record of Customer
$add_customer = mysql_query("INSERT INTO `tbl_customer`(
`firstname` ,
`lastname` ,
`company` ,
`email` ,
`contact` ,
`date_registered`,
`username` ,
`password` 
)
VALUES (
'$firstname',
'$lastname',
'$company',
'$email',
'$contact',
now(),
'$username',
'$password')")or die(mysql_error());

$add_customer = mysql_query("INSERT INTO `employment_login` VALUES('','', '$username', '$password', '3')")or die(mysql_error());
echo "<script> self.location='notification.php'; </script>";

}
?>