<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php include_once("../includes/db_connect.php"); ?>
<?php 
logged_in();
     if (!isset($_SESSION['id'])) {
		 redirect_to('customer_index.php');
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
					<li><a href="#" accesskey="1" title="">My Cart</a></li>
					<li class="current_page_item"><a href="customer_index.php" accesskey="2" title="">My profile</a></li>

					<li><a href="search_product.php" accesskey="4" title="">Search Product</a></li>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2 >Profile</h2>
			
			 <form id="Main_Form" name="Main_Form" action="customer_update_profile.php" method='POST' onsubmit="return validateForm()">		
		
		<?php
		$query = "SELECT * FROM tb_user WHERE id ='".$_SESSION['id']."';";
	$result = mysql_query($query);
	$row = mysql_fetch_array($result);
		?>
	<input type="hidden" value="<?php echo $row[0]; ?>" name="id" />	
<table CELLSPACING=10  border=2 align="center" >

<tr>
<td><label for="name">User Name</label></td><td><input id="name" type="text" name="username" value="<?php echo $row[2];?>" disabled/></td>
</tr>
<tr>
<td><label for="name">Email Address </label></td><td><input id="name" type="text" name="email" value="<?php echo $row[7]; ?>" required/></td>
</tr>
<tr>
<td><label for="name">First Name </label></td><td><input id="name" type="text" name="firstname" value="<?php echo $row[4]; ?>" required/></td>
</tr>
<tr>
<td><label for="name">Last Name </label></td><td><input id="name" type="text" name="lastname" value="<?php echo $row[5]; ?>" required /></td>
</tr>
<tr>
<td><label for="name">Contact No# </label></td><td><input id="name" type="text" name="contact" value="<?php echo $row[6]; ?>" required /></td>
</tr>
<tr>
<td><label for="name">Password</label></td><td><input id="name" type="password" name="password" value="<?php echo $row[3];?>" requiredv /></td></tr>
<tr>
<td></td><td><input type="submit" name="submit" value="Update"> </td>
</tr></table>		
</form>
		</div>
		 
	</div>
</div>
<div class="wrapper">
	<div id="three-column" class="container">
		<div><span class="arrow-down"></span></div>

 


	</div>
</div>
<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</body>
</html>