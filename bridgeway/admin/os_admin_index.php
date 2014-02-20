<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
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
			<h2>Product Management</h2>
			
			<div style="border:1px solid;"> 

<form action="os_admin_index.php" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>Product Name</td><td> <input type="text" name="p_name" required></td>
</tr>

<tr>
<td>Description </td><td><input type="text" name="p_desc" required></td>
</tr>

<tr>
<td>Quantity </td><td><input type="text" name="quantity" required></td>
</tr>

<tr>
<td>Price </td><td><input type="text" name="price" required></td>
</tr>

<tr>
<td>FileName: (2mb below required)</td><td><input type="file" name="file" id="file" required></td>

</tr>


</table>

<br>

<input type="submit" value="Submit" name="submit_product">
<input type="reset" value="Reset">

<?php


if(isset($_POST['submit_product']))
{
 mysql_connect("localhost","root","") or die (mysql_error());
    echo "sulod";
    mysql_select_db("db_bridgeway") or die (mysql_error());
    echo "abre na ";

$pname= ($_POST['p_name']);
$pdesc = ($_POST['p_desc']);
$pquantity= ($_POST['quantity']);
$pprice = ($_POST['price']);

$allowedExts = array("gif", "jpeg", "jpg", "png");
$temp = explode(".", $_FILES["file"]["name"]);
$extension = end($temp);
if ((($_FILES["file"]["type"] == "image/gif")
|| ($_FILES["file"]["type"] == "image/jpeg")
|| ($_FILES["file"]["type"] == "image/jpg")
|| ($_FILES["file"]["type"] == "image/pjpeg")
|| ($_FILES["file"]["type"] == "image/x-png")
|| ($_FILES["file"]["type"] == "image/png"))
&& ($_FILES["file"]["size"] < 30000)
&& in_array($extension, $allowedExts))
  {
  if ($_FILES["file"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
	echo "<script>alert('ERROR UPLOAD');</script>";
	
    }
  else
    {

    if (file_exists("upload/" . $_FILES["file"]["name"]))
      {
      echo $_FILES["file"]["name"] . " already exists. ";
	  echo "<script>alert('EXIST');</script>";
      }
    else
      {
      move_uploaded_file($_FILES["file"]["tmp_name"],
      "upload/" . $_FILES["file"]["name"]);
      echo "Stored in: " . "upload/" . $_FILES["file"]["name"];
mysql_query("insert tb_products set name='".$pname."', description='".$pdesc."', quantity='".$pquantity."', price='".$pprice."', image='".$_FILES["file"]["name"] ."'");
echo "<script>alert('Record successfuly saved.');window.location.href='os_admin_index.php';</script>";
      }
    }
  }
else
  {
  echo "Invalid file";
  }
}
?>
</form>    

<div class="wrapper">
	<div id="three-column" class="container">
		<div><span class="arrow-down"></span></div>
						<?php
$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");

mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");
$query = mysql_query("select * from tb_products order by product_id asc");
?>

<?php

if(mysql_num_rows($query)>0){ 
?>
IF STOCK BELOW 10 FONT COLOR IS <font color='red'>RED</font>
<table border="1">
<tr>
    <td>Product ID</td>
    <td>Product Name</td>
    <td>Description</td>
    <td>Quantity</td>
	   <td>Price</td>
</tr>
<?php
    while($row= mysql_fetch_array($query)){ ?>
    <tr>
	<td><?=$row['product_id']?></td>
        <td><?=$row['name']?></td>
        <td><?=$row['description']?></td>
		   <td><?
		   $quantity=$row['quantity'];
		   if($quantity<10)
		   {echo "<center><font color='red'>".$quantity."</font></center>";}
		   else
		   {echo $quantity;}
		   ?></td>
		      <td><?=$row['price']?></td>

		
        <td><a href="edit_product.php?id=<?=$row['product_id']?>">[Edit]</a>&nbsp;<a  href="delete.php?id=<?=$row['product_id']?>&user_id=<?=$_SESSION['id']?>">[Delete]</a></td>
	
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
<a href="os_admin_printprod.php">[PRINT PRODUCTS REPORT]</a>
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

