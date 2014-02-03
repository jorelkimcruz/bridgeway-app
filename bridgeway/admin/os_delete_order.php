<?php

$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");
mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");

$id    = $_GET['id'];
$status    = $_GET['status'];
$p_quantity =$_GET['quantity'];
$p_currentTotal="";
$p_id = $_GET['prod_id'];

	
if(isset($id))
{
    mysql_query("DELETE FROM tb_order WHERE order_id='".$id."'");
	
$sql = "SELECT * FROM tb_products WHERE product_id = '$p_id'";
	$result = mysql_query($sql) or die(mysql_error());

while($row = mysql_fetch_array($result))
		{
			$p_currentTotal = $row['3'];
		echo $row['3'];
		if($status='Pending' || $status='Accepted'){
   	$plus_quantity=$p_currentTotal+$p_quantity;	
	$update="UPDATE tb_products SET quantity = '$plus_quantity' 
	WHERE product_id = '$p_id' ";
	$exe=mysql_query($update) or die(mysql_error());
	}
}

}

  echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_orders.php';</script>"; 

  
?>


