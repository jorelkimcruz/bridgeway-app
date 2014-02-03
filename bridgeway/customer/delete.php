<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>
<?php
logged_in();

$id = $_GET['id'];
$user_id= $_GET['user_id'];

if(isset($id))
{
    mysql_query("DELETE FROM tb_order WHERE id='".$id."'");


// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Delete Product from BatchOrder','Successful');";
				$result = mysql_query($audit_query);
  echo "<script>alert('Record successfuly updated.');window.location.href='cart.php';</script>";
}
  
?>

