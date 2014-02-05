
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
				<li class="current_page_item"><a href="view_payable.php" accesskey="4" title="">View Payable</a></li>
					<li><a href="add_payable.php" accesskey="1" title="">Add Payable</a></li>
					<li><a href="view_receivable.php" accesskey="1" title="">View Receivable</a></li>
					<li><a href="liability.php" accesskey="2" title="">Financial Statement</a></li>
											<?php
					   if (isset($_SESSION['id'])) {
							$level=$_SESSION['level'];
							if($level==1)
							{?> 		<li><a href="../admin/super_admin_index.php" accesskey="4" title="">SuperAdmin Index</a></li> <?php }
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
			<h2>Payable</h2>
			
		<!-- JQUERY IMPORT-->
        <link type="text/css" href="../jquery-ui.css" rel="Stylesheet" />	
		<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="../js/jquery-ui-1.8.17.custom.min.js"></script>

 <!-- JQUERY DATATABLES -->
   		<script type="text/javascript" src="../js/jquery.dataTables.js"></script>
    	<link rel="stylesheet" type="text/css" href="../jquery.dataTables_themeroller.css"/>
    
        
    <script language="javascript">
		//DATATABLES
	$(document).ready(function() {
    $('#auditTrail').dataTable({"bJQueryUI": true,"sPaginationType": "full_numbers","sScrollX": "120%",
        "sScrollXInner": "120%","bScrollCollapse": true});
	} );
	// Select All checkboxes
	function selectAll(x) {
		for(var i=0,l=x.form.length; i<l; i++)
		if(x.form[i].type == 'checkbox' && x.form[i].name != 'sAll')
		x.form[i].checked=x.form[i].checked?false:true
	}
		
	</script>

<div id="">

        <!-- TABLE FOR Audit Trail -->
        <table align="center" cellpadding="0" cellspacing="0" border="0" id="auditTrail">
        <thead>
        <tr>
        <th align="center">Id</th>
        <th align="center">Amount</th>
        <th align="center">Description</th>
        <th align="center">Date/Time Added</th>
        </tr>
        </thead>
        <tbody>
        <?php
			$query = "SELECT * FROM tb_payables;";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			while($row = mysql_fetch_assoc($result_set))
			{
			?>
            
        
        <tr>
        <td align="center"><?php echo $row['id']; ?></td>
        <td align="center"><?php echo $row['amount']; ?></td>
        <td align="center"><?php echo $row['description']; ?></td>
        <td align="center"><?php echo $row['date_added']; ?></td>
        </tr>
        <?php
			}
			mysql_close();
		?>
       	</tbody>
        </table>
		
		</div>
	</div>
</div>
<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</body>
</html>