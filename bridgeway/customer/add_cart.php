<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>

<?php 
logged_in();


if(isset($_SESSION['id']))
	{
	$id = $_SESSION['id'];
	
					
	$query = "SELECT * FROM tb_order WHERE customer_id = $id AND active=1 AND batchorder_id IS NOT NULL";
	
	$result = mysql_query($query )OR DIE (mysql_error);
	
		$row = mysql_fetch_array($result);
		
		
	if($row>0)
	{
	
		
if(isset($_POST['product_id']))
	{
	$query = "SELECT * FROM tb_order WHERE customer_id = $id AND active=1 AND batchorder_id IS NOT NULL";
	
	$result = mysql_query($query )OR DIE (mysql_error);
	
		$row = mysql_fetch_array($result);
		
		$batch_id = $row['batchorder_id'];
		
		$date = date('Y-m-d H:i:s');
		$user_id=$_SESSION['id'];
		$p_id =  $_POST['product_id'];
		$p_quantity = $_POST['quantitytoorder'];
		$p_price = $_POST['product_price'];
		
		$query = "SELECT * FROM tb_products WHERE product_id = $p_id";
			
	$result = mysql_query($query )OR DIE (mysql_error);
	
	$row = mysql_fetch_array($result)OR DIE (mysql_error);
	
	
	$ordered_quantity=$row[3]-$p_quantity;	
	$update="UPDATE tb_products SET quantity = '$ordered_quantity' 
	WHERE product_id = '$p_id' ";
	$exe=mysql_query($update) or die(mysql_error());
	
	$total_amount = $p_quantity * $p_price;

	$ordered = "INSERT INTO tb_order VALUES('','$p_id','$user_id','$p_price','$p_quantity','$total_amount ','$date','$batch_id','1')";
	$result = mysql_query($ordered)OR DIE (mysql_error);
	
	// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Add to existing order','Successful');";
				$result = mysql_query($audit_query);
				
		echo "<script> alert('Successfully!'); location = 'customer_index.php';</script>";
	
	}
		
		
	}
	else{
		
			function random_string($length) {
    $key = '';
    $keys = array_merge(range(0, 9), range(0,9));

    for ($i = 0; $i < $length; $i++) {
        $key .= $keys[array_rand($keys)];
    }

    return $key;
}

	$batch_id = random_string(6);
	
	
if(isset($_POST['product_id']))
	{
		$date = date('Y-m-d H:i:s');
		$user_id=$_SESSION['id'];
		$p_id =  $_POST['product_id'];
		$p_quantity = $_POST['quantitytoorder'];
		$p_price = $_POST['product_price'];
		
		$query = "SELECT * FROM tb_products WHERE product_id = $p_id";
			
	$result = mysql_query($query )OR DIE (mysql_error);
	
	$row = mysql_fetch_array($result)OR DIE (mysql_error);
	
	
	$ordered_quantity=$row[3]-$p_quantity;	
	$update="UPDATE tb_products SET quantity = '$ordered_quantity' 
	WHERE product_id = '$p_id' ";
	$exe=mysql_query($update) or die(mysql_error());
	
	$total_amount = $p_quantity * $p_price;

	$ordered = "INSERT INTO tb_order VALUES('','$p_id','$user_id','$p_price','$p_quantity','$total_amount ','$date','$batch_id','1')";
	$result = mysql_query($ordered)OR DIE (mysql_error);
	
	// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query1="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Added New Batch Order','Successful');";
				$result = mysql_query($audit_query1);

		echo "<script> alert('Successfully!'); location = 'customer_index.php';</script>";
	
	}
		
	}
	}

	

?>