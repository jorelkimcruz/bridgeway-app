<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>
<?php
logged_in();
$user_id=$_SESSION['id'];
$id    = $_GET['id'];
if(isset($id))
{
    mysql_query("DELETE FROM tb_user
WHERE id='".$id."'");
// INSERT TIME-IN FOR AUDIT TRAIL				
				
				$audit_query="INSERT INTO tb_audit_trail values('','$user_id',CURRENT_TIMESTAMP,'Authentication','Delete Customer','Successful');";
				$result = mysql_query($audit_query);
  echo "<script>alert('Record successfuly updated.');window.location.href='os_admin_customers.php';</script>";
}
  
?>

