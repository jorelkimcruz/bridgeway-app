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
							<?php
					   if (isset($_SESSION['id'])) {
							$level=$_SESSION['level'];
							if($level==1)
							{?> 		<li><a href="super_admin_index.php" accesskey="4" title="">SuperAdmin Index</a></li> <?php }
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
			<h2>Cart</h2>
			<b>Pending ORDERS</b><br>
			<a href="os_admin_ordersB.php">[ACCEPTED]</a>
			<a href="os_admin_ordersC.php">[PAID]</a>
			<a href="os_admin_orders.php">[VIEW ALL ORDERS]</a>
					<?php
					
					if(isset($_SESSION['id']))
					{
						$id = $_SESSION['id'];
					}
					


$query = mysql_query("select * from tb_order WHERE active='1' GROUP BY batchorder_id ");



?>

<?php

if(mysql_num_rows($query)>0){ 
?>
<center>
<table border="2" >
<tr>
    <td><b>Order ID</b></td>
    <td><b>Customer ID</b></td>
	   <td><b>Total Quantity</b></td>
	   <td><b>Total Amount</b></td>
	   <td><b>Date Added</b></td>
	   	   <td><b>Status</b></td>
		   <td></td>

	   
</tr>
<?php
    while($row= mysql_fetch_array($query)){ ?>
    <tr>
	<td><?=$row['batchorder_id']?></td>
        <td><?=$row['customer_id']?></td>
			   <td>
			 	<?php $batchorder = $row['batchorder_id']; $query2 =  mysql_query("select * from tb_order WHERE batchorder_id=".$row['batchorder_id']."");
    while($row= mysql_fetch_array($query2)){
	
		$p_quant = $row['product_quantity'];
		$p_price = $row['total_price'];
		$p_id = $row['product_id'];
		$date=$row['order_date'];
		$status = $row['active'];
		$totalQuant=0;
		$totalPrice=0;
		
		$totalQuant += $p_quant;
		$totalPrice += $p_price;
		
		echo $totalQuant;
	} ?>   
			   </td>
			   <td><?php echo $totalPrice; ?></td>
			   <td>
			   <center>
		<?php echo $date;?>
			 </center></td>
			 <td><?php if($status==2){?> <a  href="os_update_order_status.php?id=<?=$batchorder?>&status=<?=$status?>"  onclick="return confirm('Are you sure to update this order?')">  [DONE]  </a>
 <?php } else if($status==3){ ?> <a  href="print.php?id=<?=$batchorder?>&status=<?=$status?>"  onclick="return confirm('Are you sure to update this order?')">  [Print Receipt]  </a><?php } else{echo"PENDING";}?></td>
        <td>&nbsp;<a  href="os_delete_order.php?id=<?=$batchorder?>&status=<?=$status?>&quantity=<?=$p_quant?>&prod_id=<?=$p_id?>"  onclick="return confirm('Are you sure?')">[Delete]</a></td>
	
    </tr>
<?php }
        
}
else{
    echo "no record";
}

?>
</td></tr>
</table>
<a href="os_admin_printorderA.php"> PRINT ALL PENDING ORDERS</a>
			
			
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