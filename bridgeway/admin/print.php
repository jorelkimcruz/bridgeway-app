<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$batid=$_GET['id'];
$stat=$_GET['status'];

$kwiri=mysql_query("select tb_products.name,tb_order.product_id, tb_order.customer_id, tb_order.product_price, tb_order.product_quantity, tb_order.order_date, tb_order.total_price from tb_order INNER JOIN tb_products ON tb_products.product_id=tb_order.product_id WHERE batchorder_id='$batid' AND active='$stat'");

if(mysql_num_rows($kwiri)>0){
$total_biill =0;$total_amount=0;
while($job_fetch=mysql_fetch_array($kwiri))
{

$f_pid=$job_fetch['name'];
$f_cusid=$job_fetch['customer_id'];
$f_prodp=$job_fetch['product_price'];
$f_prodq=$job_fetch['product_quantity'];
$f_totalp=$job_fetch['total_price'];
$f_date=$job_fetch['order_date'];


$total_biill = $f_prodp*$f_prodq;

$total_amount +=$total_biill;





$i++;

$report.="
<tr><td>$f_pid</td> <td>$f_prodp</td><td>$f_prodq</td></tr>
";

}
}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
<br><br><br><h2><b>Reciept No: <?php echo $batid;?></b></h2>
<center>
<table cellspacing="20">
<tr><td>Customer ID: </td> <td><?=$f_cusid?></td><td>Order Date: </td><td><?=$f_date?></td></tr>
<tr><td><b>Product</b></td> <td><b>Price</b></td> <td><b>Quantity</b></td><b></b></tr>
<?php echo $report;?>
<tr><td>TOTAL AMOUNT: </td><td></td><td><?php echo 
$total_amount;?></td></tr>

</table>
</center>

</center>
</body>
</html>