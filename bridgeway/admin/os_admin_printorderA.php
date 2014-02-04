<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$kwiri=mysql_query("select * from tb_order WHERE active='1' GROUP BY batchorder_id");

if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_id=$job_fetch['id'];
$f_cusid=$job_fetch['customer_id'];
$f_prodq=$job_fetch['product_quantity'];
$f_totalp=$job_fetch['total_price'];
$f_date=$job_fetch['order_date'];
$f_status=$job_fetch['active'];
$f_statusString="";
if($f_status==1)
{
$f_statusString="PENDING";
}
elseif($f_status==2)
{
$f_statusString="ACCEPTED";
}
if($f_status==3)
{
$f_statusString="PAID";
}

$i++;
$report.="<tr>
<td>$i</td>
<td>$f_id</td>
<td>$f_cusid</td>
<td>$f_prodq</td>
<td>$f_totalp</td>
<td>$f_date</td>
<td>$f_statusString</td>
</tr>";
}

}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
LIST OF ALL CUSTOMERS
<table border=2 cellpadding = 10>
<tr>
<th>No.</th>
<th>Order ID</th>
<th>Customer ID</th>
<th>Total Quantity</th>
<th>Total Amount</th>
<th>Date Added</th>
<th>Status</th>
</tr>
<?php echo $report;?>
</table>
</center>
</body>
</html>