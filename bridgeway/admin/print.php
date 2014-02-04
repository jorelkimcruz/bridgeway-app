<?php require_once("../includes/db_connect.php"); ?>
<?php 

$report=""; $i=0;
$batid=$_GET['id'];
$stat=$_GET['status'];

$kwiri=mysql_query("select * from tb_order WHERE batchorder_id='$batid' AND active=3");
if(mysql_num_rows($kwiri)>0){
while($job_fetch=mysql_fetch_array($kwiri))
{
$f_pid=$job_fetch['product_id'];
$f_cusid=$job_fetch['customer_id'];
$f_prodp=$job_fetch['product_price'];
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
$report.="<table>
<tr><th>NO.:</th><td>$i</td><tr>
<tr><th>Product ID:</th><td>$f_pid</td></tr>
<tr><th>Customer ID:</th><td>$f_cusid</td></tr>
<tr><th>Product Price:</th><td>$f_prodp</td></tr>
<tr><th>Product Quantity:</th><td>$f_prodq</td></tr>
<tr><th>Total Price:</th><td>$f_totalp</td></tr>
<tr><th>Date:</th><td>$f_date</td></tr>
";
}

}


?>

<html>
<body onload=print() style='background-color:#fff; margin:0px 20px 10px 20px;'>
<center><br><br>
<font style='font-size:14px;'>BRIDGEWAY<br>
123-4567 / (123) 456-789</font><br>
<br><br><br><h2><b>Reciept</b></h2>

<?php echo $report;?>

</center>
</body>
</html>