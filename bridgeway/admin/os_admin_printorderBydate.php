
<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;

if(isset($_POST['submitdate']))
{
$fdate=$_POST['fdate'];
$edate=$_POST['tdate'];

if($edate<$fdate)
{
	$report="<tr>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
<td>NO DATA</td>
</tr>";
}
elseif($edate>=$fdate)
{
$kwiri=mysql_query("SELECT * FROM tb_order WHERE order_date BETWEEN '$fdate' AND '$edate'");
if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_p_id=$job_fetch['product_id'];
$f_c_id=$job_fetch['customer_id'];
$f_p_price=$job_fetch['product_price'];
$f_p_quantity=$job_fetch['product_quantity'];
$f_total_price=$job_fetch['total_price'];
$f_order_date = $job_fetch['order_date'];
$f_batch_id = $job_fetch['batchorder_id'];


$i++;
$report.="<tr>
<td>$i</td>
<td>$f_p_id</td>
<td>$f_c_id</td>
<td>$f_p_price</td>
<td>$f_p_quantity</td>
<td>$f_total_price</td>
<td>$f_order_date</td>
<td>$f_batch_id</td>

</tr>";
}
}
}
}
?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL EMPLOYEE
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>Product ID</th>
<th>Customer ID</th>
<th>Product Price</th>
<th>Product Quantity</th>
<th>Total Price</th>
<th>Order Date</th>
<th>Batch ID</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>