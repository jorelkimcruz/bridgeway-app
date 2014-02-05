
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
					<li><a href="add_payable.php" accesskey="1" title="">Add Payable</a></li>
					<li><a href="view_receivable.php" accesskey="1" title="">View Receivable</a></li>
					<li class="current_page_item"><a href="liability.php" accesskey="2" title="">Financial Statement</a></li>
								<?php
					   if (isset($_SESSION['id'])) {
							$level=$_SESSION['level'];
							if($level==1)
							{?> 		<li><a href="../admin/super_admin_index.php" accesskey="4" title="">SuperAdmin Index</a></li> <?php }
					}
					?>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Financial Statement</h2>
				
<table  border="2" CELLPADDING=10 align="center">
        <thead>
        <tr>
        <th align="center">Total Receivable</th>
        <th align="center">Total Inventory</th>
        <th align="center">Total Payable</th>
        </tr>
        </thead>
        <tbody>
        <?php
			$query = "SELECT SUM(total_price) as total_price FROM tb_order WHERE active=3;";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			$order = mysql_fetch_array($result_set);
			
			$query1 = "SELECT SUM(quantity) as quantity FROM tb_products;";
			$result_set1 = mysql_query($query1);
			confirm_query($result_set1);
			$products = mysql_fetch_array($result_set1);
			
			$query2 = "SELECT SUM(amount) as amount FROM tb_payables;";
			$result_set2 = mysql_query($query2);
			confirm_query($result_set2);
			$payables = mysql_fetch_array($result_set2);
			
			setlocale(LC_MONETARY,"en_US");
			?>
            
        
        <tr>
		<td align="center"><?php echo number_format("".$order['total_price']."",2)."<br>"; ?></td>
        <td align="center"><?php echo $products['quantity']; ?></td>
        <td align="center"><?php echo number_format("".$payables['amount']."",2)."<br>"; ?></td>
        </tr>
        <?php
			
			mysql_close();
		?>
       	</tbody>
        </table>


</table>
      
		</div>
	</div>
</div>



<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</body>
</html>