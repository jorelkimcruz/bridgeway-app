<?php require_once("includes/functions.php"); ?>
<?php
		// Four steps to closing a session
		// (i.e. logging out)

		// 1. Find the session
		require_once("includes/session.php");
		
		// 2. save the logout date and time
		$id=$_SESSION['id'];
		
		include 'includes/db_connect.php';
		
		$query="INSERT INTO tb_audit_trail values('','$id',CURRENT_TIMESTAMP,'Authentication','Logout','Successful');";
		$result_set=mysql_query($query);
		confirm_query($result_set);
		if($result_set>=1)
		{		
		// 3. Unset all the session variables
		$_SESSION = array();
		// 5. Destroy the session
		session_destroy();
		redirect_to("login.php?logout=1");
		}
		
		else
		{
			echo "Logout succesfully executed. Please Refresh the page and logout again.";
		}
		
?>