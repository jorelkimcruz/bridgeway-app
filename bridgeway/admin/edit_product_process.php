<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>

<?php
logged_in();

if(isset($_POST['submit_product']))
{
$product_id=$_POST['product_id'];
$id=$_SESSION['id'];
$pname= ($_POST['p_name']);
$pdesc = ($_POST['p_desc']);
$pquantity= ($_POST['quantity']);
$pprice = ($_POST['price']);


$q="UPDATE tb_products SET name = '$pname', 
	description = '$pdesc', quantity = '$pquantity',
	price = '$pprice' WHERE product_id = $product_id ";
	$exe=mysql_query($q) or die(mysql_error());  
	// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$id',CURRENT_TIMESTAMP,'Authentication','Update Product','Successful');";
				$result = mysql_query($audit_query);
	

echo "<script>alert('Record update successfuly saved.');window.location.href='os_admin_index.php';</script>";
      }
else
  {
  echo "Invalid file";
  }
?>