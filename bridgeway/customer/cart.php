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
							<li><a href="customer_index.php?page=1" accesskey="4" title="">Products</a></li>
					<li><a href="cart.php" accesskey="1" title="">My Cart</a></li>
					<li class="current_page_item"><a href="customer_profile.php" accesskey="2" title="">My profile</a></li>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Cart</h2>
			
					<?php
					
					if(isset($_SESSION['id']))
					{
						$id = $_SESSION['id'];
					}
					

$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");
mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");

$query = "SELECT  tb_order.batchorder_id,tb_order.id,tb_products.name, tb_order.product_price, tb_order.product_quantity, tb_order.total_price,tb_order.active From tb_products INNER JOIN tb_order ON tb_products.product_id=tb_order.product_id WHERE customer_id=".$id ." AND active>=1  AND  active<=2";

$result = mysql_query($query )OR DIE (mysql_error);

?>

<?php

if(mysql_num_rows($result)>0){ 
?>
<center>
<table cellspacing="50" >
<tr>

    <td><b>Product</b></td>
    <td><b>Price</b></td>
    <td><b>Quantity</b></td>
	<td><b>Total Price</b></td>
	
</tr>
<?php
$totalamount =0;

    while($row= mysql_fetch_array($result)){ $batchorder_id = $row['batchorder_id'];
$status = $row['active'];?>
    <tr>
        <td><?=$row['name']?></td>
        <td><?=$row['product_price']?></td>
		    <td><?=$row['product_quantity']?></td>
		   <td><?=$row['total_price'];  $totalamount += $row['total_price'];?> PHP</td>
		  
        <td><?php
		     if($status == 1){?> <a  href="delete.php?id=<?=$row['id']?>"  onclick="return confirm('Are you sure?')">[Delete]</a></td>
	<?php } else{  }?>
    </tr>

<?php 
       
    } ?>
		<tr>
<td><b>TOTAL AMOUNT: </b></td><td></td><td></td><td><?php echo    $totalamount; ?> PHP</td>
</tr>

		<tr>
<td><b></b></td><td></td><td></td><td>

<?php
		     if($status == 1){?>
      <a  href="checkout.php?id=<?=$batchorder_id?>&status=<?=$status?>"  onclick="return confirm('Are you sure to update this order?')">  [Checkout]  </a>
	  <?php }else { 
     ?>
	  <a  href="checkout.php?id=<?=$batchorder_id?>&status=<?=$status?>"  onclick="return confirm('Are you sure to update this order?')">  [Cancel]  </a>

	 <?php
	 }
		?>

     </td>
</tr>
</td></tr>
</table></center>
	<?php
        
}
else{
    
    echo "no record";
}

?>
			
			
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