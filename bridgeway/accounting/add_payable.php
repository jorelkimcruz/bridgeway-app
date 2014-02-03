
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
				<li><a href="view_payable.php" accesskey="4" title="">View Payable</a></li>
					<li class="current_page_item"><a href="add_payable.php" accesskey="1" title="">Add Payable</a></li>
					<li><a href="liability.php" accesskey="2" title="">Financial Statement</a></li>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Add Payable</h2>
			
			<p>Please complete the fields below</p>
          
            <form id="Main_Form" name="Main_Form" action="add_payable_process.php" method='POST' onsubmit="return validateForm()">
            <input type="hidden" value="<?php echo $_SESSION['id']; ?>" name="id" />	
<table CELLSPACING=10 align="center">
<tr>
<td><label for="name">Amount</label></td><td><input id="name" type="text" name="amount"  required/></td>
</tr>
<tr>
<td><label for="name">Description </label></td><td><textarea rows="4" cols="50" name="description" required>
</textarea></td>
</tr>
<tr>
<td></td><td><input name="submit" type="submit" value='Register'></td>
</tr></table>
      
            </form>
			
		</div>
	</div>
</div>



<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</body>
</html>