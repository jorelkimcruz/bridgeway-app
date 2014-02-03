<?php
include("../includes/db_connect.php");
require_once("../includes/session.php");

if(isset($_POST['submit'])){

$id=$_POST['id'];
$amount = $_POST['amount'];
$description = $_POST['description'];
$date = date('Y-m-d H:i:s');


//INSERT INTO record of Payables
$add_customer = mysql_query("INSERT INTO `tb_payables`(
`id` ,
`amount` ,
`description` ,
`date_added`
)
VALUES ('',
'$amount',
'$description',
'$date')")or die(mysql_error());

// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$id',CURRENT_TIMESTAMP,'Authentication','Add Payable','Successful');";
				$result = mysql_query($audit_query);
	
echo "<script> alert('Successfully!'); location = 'add_payable.php';</script>";
}
?>