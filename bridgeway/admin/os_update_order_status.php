<?php

$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");
mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");

$id    = $_GET['id'];

$status    = $_GET['status'];
$new_status="";

if ($status == 2) {
   	$update="UPDATE tb_order SET active=3
		WHERE batchorder_id = '$id ' ";
		$exe=mysql_query($update) or die(mysql_error());
		echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_orders.php';</script>"; 
} /*else {
      	$update="UPDATE tb_order SET active=4
		WHERE batchorder_id = '$id ' ";
		$exe=mysql_query($update) or die(mysql_error());
		echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_orders.php';</script>"; 
} */

	
		
/*
if(isset($id))
{
    mysql_query("DELETE FROM tb_order
	
WHERE order_id='".$id."'");

  echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_orders.php';</script>";
} 
*/
  
?>


