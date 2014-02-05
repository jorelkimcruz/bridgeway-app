<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>
<?php 
logged_in();
     if (!isset($_SESSION['id'])) {
		 redirect_to('admin/os_admin_index.php');
	  }
	  
	  

?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bridge Way</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="../default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
		
			<div id="menu">
				<ul>
					<li><a href="os_admin_index.php" accesskey="1" title="">Product Management</a></li>
					<li><a href="os_admin_orders.php" accesskey="2" title="">Orders</a></li>
					<li><a href="os_admin_customers.php" accesskey="3" title="">Customer</a></li>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Product Management</h2>
			
			<div style="border:1px solid;"> 
<?php
			$product_id=$_GET['id'];
			$query = "SELECT * FROM tb_products WHERE product_id ='".$product_id."';";
			$result = mysql_query($query);
			$row = mysql_fetch_array($result);
			
?>
			
<form action="edit_product_process.php" method="post" enctype="multipart/form-data">
<input type="hidden" value="<?php echo $row[0]; ?>" name="product_id" />
<table>
<tr>
<td>Product Name</td><td> <input type="text" name="p_name" value="<?php echo $row[1];?>"required></td>
</tr>

<tr>
<td>Description </td><td><input type="text" name="p_desc" value="<?php echo $row[2];?>"required></td>
</tr>

<tr>
<td>Quantity </td><td><input type="text" name="quantity" value="<?php echo $row[3];?>" required></td>
</tr>

<tr>
<td>Price </td><td><input type="text" name="price" value="<?php echo $row[4];?>"required></td>
</tr>


</table>

<br>

<input type="submit" value="Submit" name="submit_product">
<input type="reset" value="Reset">

</form>    




<div class="wrapper">
	<div id="three-column" class="container">
		<div><span class="arrow-down"></span></div>

	</div>
</div>
</div>
		</div>
	</div>
</div>

<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</body>
</html>

