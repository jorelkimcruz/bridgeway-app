<?php
	session_start();
	
	$timezone = "Asia/Manila";
	date_default_timezone_set($timezone);
	
	
	function logged_in() {
		
		return isset($_SESSION['id']);
		return isset($_SESSION['username']);
		return isset($_SESSION['level']);
		return isset($_SESSION['logging_no']);
		return isset($_SESSION['time_end']);
		return isset($_SESSION['time_start']);
	}
	
	function confirm_logged_in() {
		if (!logged_in()) {
			redirect_to("../login.php");
		}
	}
?>
