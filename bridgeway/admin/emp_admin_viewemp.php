<?php require_once("../includes/session.php"); ?>
<?php include_once("../includes/functions.php"); ?>
<?php require_once("../includes/db_connect.php"); ?>
<?php logged_in();

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
					<li><a href="emp_admin_viewleave.php" >View Leave Request</a></li>
					<li>View Employee</li>
					<li><a href="emp_admin_addemp.php" >Add Employee</a></li>
					<li><a href="emp_attendance.php" >View Attendance</a></li>
								<?php
					   if (isset($_SESSION['id'])) {
							$level=$_SESSION['level'];
							if($level==1 || $level==6)
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
        <th align="center">First Name</th>
        <th align="center">Address</th>
        <th align="center">Email</th>
        <th align="center">Date Hired</th>
        <th align="center">Department</th>
        <th align="center">Contact no.</th>

        </tr>
        </thead>
        <tbody>
        <?php
			$query = "SELECT * FROM tb_employee;";
			$result_set = mysql_query($query);
			confirm_query($result_set);
			while($row = mysql_fetch_assoc($result_set))
			{
			?>
            
        
        <tr>
        <td align="center"><?php echo $row['id']; ?></td>
        <td align="center"><a href="emp_admin_viewempA.php?id=<?php echo $row['id'];?>"><?php echo $row['firstname']." ".$row['lastname'] ; ?></a></td>
        <td align="center"><?php echo $row['address']; ?></td>
        <td align="center"><?php echo $row['email']; ?></td>
        <td align="center"><?php echo $row['date_hired']; ?></td>
		<td align="center"><?php echo $row['department']; ?></td>
        <td align="center"><?php echo $row['contact_no']; ?></td>
        </tr>
        <?php
			}
			mysql_close();
		?>
       	</tbody>
        </table>
		</div>
			<a href="emp_admin_printemp.php">[PRINT EMPLOYEE LIST REPORT]</a>
			
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