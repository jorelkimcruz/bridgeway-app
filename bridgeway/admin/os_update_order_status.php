<?php

$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");
mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");

$id    = $_GET['id'];

$status    = $_GET['status'];
$new_status="";
echo $status;

if ($status == "Pending") {
   	$update="UPDATE tb_order SET status = 'Accepted' 
		WHERE order_id = '$id ' ";
		$exe=mysql_query($update) or die(mysql_error());
} else {
      	$update="UPDATE tb_order SET status = 'Paid' 
		WHERE order_id = '$id ' ";
		$exe=mysql_query($update) or die(mysql_error());
}

	
		
/*
if(isset($id))
{
    mysql_query("DELETE FROM tb_order
	
WHERE order_id='".$id."'");

  echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_orders.php';</script>";
} 
*/
  
?>


