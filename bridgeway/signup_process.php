<?php
session_start();
include("includes/db_connect.php");

//customer info
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$contact = $_POST['contact'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];

$check_user = mysql_query("SELECT username FROM `tb_user` WHERE username = '$username'")or die(mysql_error());
$checkrows = mysql_num_rows($check_user);

if($checkrows >= '1'){

echo "<script> self.location='signup.php?existing=1'; </script>";

}else{

//INSERT INTO record of Customer
$add_customer = mysql_query("INSERT INTO `tb_user`(
`level` ,
`first_name` ,
`last_name` ,
`email` ,
`contact_no` ,
`username` ,
`password` 
)
VALUES (
3,
'$firstname',
'$lastname',
'$email',
'$contact',
'$username',
'$password')")or die(mysql_error());

echo "<script> alert('Successfully!'); location = 'signup.php';</script>";
}
?>