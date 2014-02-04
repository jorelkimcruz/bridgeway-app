<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>
<?php
logged_in();
$user_id=$_SESSION['id'];
$batch_id    = $_GET['id'];
$status    = $_GET['status'];

$p_currentTotal="";
$p_id = $_GET['prod_id'];

	
if(isset($batch_id))
{
    mysql_query("DELETE FROM tb_order WHERE batchorder_id='".$batch_id."'");
	
$sql = "SELECT * FROM tb_order WHERE batchorder_id='$batch_id'";
	$result = mysql_query($sql) or die(mysql_error());
	
while($row = mysql_fetch_array($result))
		{
		$prod_id = $row['0'];
		$p_currentTotal = $row['3'];
		
		echo $p_currentTotal;
		echo $prod_id;
		
$sql2 = "SELECT * FROM tb_order WHERE customer_id = '$id' AND batchorder_id='$batch_id'";
		$result1 = mysql_query($sql2) or die(mysql_error());
		while($row = mysql_fetch_array($result)){
		$p_quantity = $row['product_quantity'];
		}
		if($status==1 || $status==2){
   	$plus_quantity=$p_currentTotal+$p_quantity;
	$update="UPDATE tb_products SET quantity = '$plus_quantity' 
	WHERE product_id = '$prod_id'";
	$exe=mysql_query($update) or die(mysql_error());
	}


}
// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Delete Customer','Successful');";
				$result = mysql_query($audit_query);

  echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_orders.php';</script>"; 

}


  
?>


