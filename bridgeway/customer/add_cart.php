<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>

<?php 
logged_in();
	
if(isset($_GET['id'])){

	$id = $_GET['id'];
	$date = date('Y-m-d H:i:s');
	$user_id=$_SESSION['id'];
	$quantity=$_POST["quantity"];
	
	$query = "SELECT * FROM tb_products WHERE product_id = $id";
	$result = mysql_query($query )OR DIE (mysql_error);
	$row = mysql_fetch_array($result)OR DIE (mysql_error);
	
	
	
	$ordered = "INSERT INTO tb_order VALUES('','$id', '$user_id', '$quantity', '$date')";
	$result = mysql_query($ordered)OR DIE (mysql_error);
	
	$ordered_quantity=$row[3]-$quanity;	
	$update="UPDATE tb_products SET quantity = '$ordered_quantity' 
	WHERE product_id = '$id' ";
	$exe=mysql_query($update) or die(mysql_error());
		
		echo "<script> alert('Successfully!'); location = 'search_product.php';</script>";



}
?>