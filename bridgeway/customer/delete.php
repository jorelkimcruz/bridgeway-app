<?php

$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");
mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");

$id    = $_GET['id'];

if(isset($id))
{
    mysql_query("DELETE FROM tb_order
	
WHERE order_id='".$id."'");

  echo "<script>alert('Record successfuly updated.');window.location.href='cart.php';</script>";
}
  
?>
