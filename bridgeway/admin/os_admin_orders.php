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
			<h2>Cart</h2>
			
					<?php
					
					if(isset($_SESSION['id']))
					{
						$id = $_SESSION['id'];
					}
					

$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");
mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");
$query = mysql_query("select * from tb_order order by order_id asc ");

?>

<?php

if(mysql_num_rows($query)>0){ 
?>
<table border="6" ">
<tr>

    <td><b>Order ID</b></td>
    <td><b>Product ID</b></td>
    <td><b>User ID</b></td>
    <td><b>Quantity</b></td>
	   <td><b>Total Amount</b></td>
	   <td><b>Status</b></td>
	   <td><b>Date Added</b></td>
	   <td>Update Status</td>
	   <td></td>
	   
</tr>
<?php
    while($row= mysql_fetch_array($query)){ ?>
    <tr>
	<td><?=$row['order_id']?></td>
        <td><?=$row['product_id']?></td>
        <td><?=$row['user_id']?></td>
		   <td><?=$row['quantity']?></td>
		      <td><?=$row['total_amount']?></td>
			   <td><?=$row['status']?></td>
			   <td><?=$row['date_added']?></td>
			   <td><center>
					<?php
		     if($row['status'] == "Accepted"){?>
      <a  href="os_update_order_status.php?id=<?=$row['order_id']?>&status=<?=$row['status']?>"  onclick="return confirm('Are you sure to update this order?')">  [PAID]  </a>
	  <?php }else if($row['status'] == "Pending"){
     ?>
	  <a  href="os_update_order_status.php?id=<?=$row['order_id']?>&status=<?=$row['status']?>"  onclick="return confirm('Are you sure to update this order?')">  [ACCEPT]  </a>
	 <?php
     }else{?>
			PAID
	 <?php
	 }
		?>
			
			 </center></td>
        <td>&nbsp;<a  href="os_delete_order.php?id=<?=$row['order_id']?>&status=<?=$row['status']?>&quantity=<?=$row['quantity']?>"  onclick="return confirm('Are you sure?')">[Delete]</a></td>
	
    </tr>
<?php        
        
    }
        
}
else{
    
    echo "no record";
}

?>
</td></tr>
</table>
			
			
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