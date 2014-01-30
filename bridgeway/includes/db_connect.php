<?php
$host="localhost";
$user="root";
$pass="";
$database="db_bridgeway";
$connection=mysql_connect($host, $user, $pass);
mysql_select_db($database, $connection) or die('Please Check The Database');
?>