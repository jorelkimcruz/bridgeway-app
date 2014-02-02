<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>

<?php 
logged_in();
	
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


	$ordered = "INSERT INTO tb_order VALUES('','$p_id', '$user_id', '$p_quantity', '$total_amount ','Pending','$date')";
	$result = mysql_query($ordered)OR DIE (mysql_error);

			
		echo "<script> alert('Successfully!'); location = 'customer_index.php';</script>";
	
	}
	
if(isset($_GET['id'])){


	
	
	





}
?>