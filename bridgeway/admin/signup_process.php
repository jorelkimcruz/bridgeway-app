<?php
include("../includes/session.php");
include("../includes/db_connect.php");

logged_in();

//customer info
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$contact = $_POST['contact'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$user_id=$_SESSION['id'];
$check_user = mysql_query("SELECT username FROM `tb_user` WHERE username = '$username'")or die(mysql_error());
$checkrows = mysql_num_rows($check_user);

if($checkrows >= '1'){

echo "<script> alert('Username Already exists..'); location = 'os_admin_customers.php';</script>";
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

// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Register New Customer','Successful');";
				$result = mysql_query($audit_query);

echo "<script> alert('Successfully!'); location =  'os_admin_customers.php';</script>";
}
?>