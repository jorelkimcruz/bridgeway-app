
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
			<h2>Product</h2>
			
			
		
			
	<?php
	
	// How many adjacent pages should be shown on each side?
	$adjacents = 3;
	
	/* 
	   First get total number of rows in data table. 
	   If you have a WHERE clause in your query, make sure you mirror it here.
	*/
	$query = "SELECT COUNT(*) as counter FROM tb_products";
	$total_pages = mysql_fetch_array(mysql_query($query));
	$total_pages = $total_pages['counter'];
	
	/* Setup vars for query. */
	$targetpage = "customer_index.php"; 	//your file name  (the name of this file)
	$limit = 3; 								//how many items to show per page

	
	
 $page = $_GET['page'];
	
	if($page==0 ) 
				//first item to display on this page
				$start = 0;		
	else
		
$start = ($page - 1) * $limit; 			//if no page var is given, set start to 0
	
		/* Get data. */
	$sql = "SELECT * FROM tb_products WHERE quantity>=1 LIMIT $start, $limit";
	$result = mysql_query($sql);
	
	/* Setup page vars for display. */
	if ($page == 0) $page = 1;					//if no page var is given, default to 1.
	$prev = $page - 1;							//previous page is page - 1
	$next = $page + 1;							//next page is page + 1
	$lastpage = ceil($total_pages/$limit);		//lastpage is = total pages / items per page, rounded up.
	$lpm1 = $lastpage - 1;						//last page minus 1
	
	/* 
		Now we apply our rules and draw the pagination object. 
		We're actually saving the code to a variable in case we want to draw it more than once.
	*/
$pagination = "";
	if($lastpage > 1)
	{	
		$pagination .= "<div class=\"pagination\">";
		//previous button
		if ($page > 1) 
			$pagination.= "<a href=\"$targetpage?page=$prev\">? previous</a>";
		else
			$pagination.= "<span class=\"disabled\">? previous</span>";	
		
		//pages	
		if ($lastpage < 7 + ($adjacents * 2))	//not enough pages to bother breaking it up
		{	
			for ($counter = 1; $counter <= $lastpage; $counter++)
			{
				if ($counter == $page)
					$pagination.= "<span class=\"current\">$counter</span>";
				else
					$pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";					
			}
		}
		elseif($lastpage > 5 + ($adjacents * 2))	//enough pages to hide some
		{			//close to beginning; only hide later pages
			if($page < 1 + ($adjacents * 2))		
			{
				for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
				{
					if ($counter == $page)
						$pagination.= "<span class=\"current\">$counter</span>";
					else
						$pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";					
				}
				$pagination.= "...";
				$pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
				$pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";		
			}
			//in middle; hide some front and some back
			elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
			{
				$pagination.= "<a href=\"$targetpage?page=1\">1</a>";
				$pagination.= "<a href=\"$targetpage?page=2\">2</a>";
				$pagination.= "...";
				for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
				{
					if ($counter == $page)
						$pagination.= "<span class=\"current\">$counter</span>";
					else
						$pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";					
				}
				$pagination.= "...";
				$pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
				$pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";		
			}
			//close to end; only hide early pages
			else
			{
				$pagination.= "<a href=\"$targetpage?page=1\">1</a>";
				$pagination.= "<a href=\"$targetpage?page=2\">2</a>";
				$pagination.= "...";
				for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
				{
					if ($counter == $page)
						$pagination.= "<span class=\"current\">$counter</span>";
					else
						$pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";					
				}
			}
		}
		//next button
		if ($page < $counter - 1) 
			$pagination.= "<a href=\"$targetpage?page=$next\">next ?</a>";
		else
			$pagination.= "<span class=\"disabled\">next ?</span>";
		$pagination.= "</div>\n";		
	}
?>
<form action="add_cart.php" method="post">
<table align=center>
		<tr>
	<?php
		while($row = mysql_fetch_array($result))
		{
	
		// Your while loop here
	
	echo "<td>";?>
	
			<form action="add_cart.php" method="post">
		<table>
		<tr><td><img src="../admin/upload/<?php echo $row[5];?>" alt="" width="200" height="250"/></td></tr>
		<tr><td><b>Name: </b><?php  echo $row[1]; ?></td></tr>
		<tr><td><b>Description: </b><?php echo '<br> '.$row[2];?></td></tr>
		<tr><td><b>Quanitity: </b> <?php  echo $row[3];?></td></tr>
		<tr><td><b>Price: </b> <?php  echo $row[4];?></td></tr>
		<tr><td><b>Quantity to Order: </b> <select name="quantitytoorder">
	<?php 
		for($p=1; $p<=$row[3]; $p++){ ?>
		<option value="<?php echo $p ?>"><?php echo $p ?></option>
		<?php }  ?>
</select></td></tr>
		<tr><td><input type="hidden" name="product_id" value="<?php echo $row[0]; ?>"></td></tr>
		<tr><td><input type="hidden" name="product_price" value="<?php echo $row[4]; ?>"></td></tr>
		<tr><td><input type="submit" value="Submit"  onclick="return confirm('Are you sure to add this to your cart?')"></td><tr>
		
		</table>
		</form>		
		<?php

		
		
		}
		
	?>
</tr>
		</table>
		</form>
<?=$pagination?>
	
	
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