<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$kwiri=mysql_query("SELECT * FROM tb_products");

if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_pid=$job_fetch['product_id'];
$f_name=$job_fetch['name'];
$f_desc=$job_fetch['description'];
$f_quan=$job_fetch['quantity'];
$f_price=$job_fetch['price'];

$i++;
$report.="<tr>
<td>$i</td>
<td>$f_pid</td>
<td>$f_name</td>
<td>$f_desc</td>
<td>$f_quan</td>
<td>$f_price</td>
</tr>";
}

}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL PRODUCTS
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>Product ID</th>
<th>NAME</th>
<th>Description</th>
<th>Quantity</th>
<th>Price</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>