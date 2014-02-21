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
		<center><h2>Employee Details</h2>
				 <form id="Main_Form" name="Main_Form" action="update_emp.php" method='POST' onsubmit="return validateForm()">		
		
		<?php
		$query = "SELECT * FROM tb_user WHERE id ='".$_GET['id']."';";
	$result = mysql_query($query);
	$row = mysql_fetch_array($result);
		?>
	<input type="hidden" value="<?php echo $row[0]; ?>" name="id" />	
<table align="center" border="0">
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
	<td colspan="5"><font style="text-decoration:underline;" size="3">Personal Information</font></td>
</tr>

<tr>
    <td><font color="#FF0000">*</font>Name:</td>
    <td colspan="3">
    	<font color="#FF0000">*</font><input type="text"  name="firstname"  placeholder="First Name" value="<?php echo $row[4]; ?>" required/>	
    	<font color="#FF0000">*</font><input type="text"  name="middlename" placeholder="Middle Name" value="<?php echo $row[5]; ?>"/>
   		<font color="#FF0000">*</font><input type="text"  name="lastname" placeholder="Last Name" value="<?php echo $row[6]; ?>" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Gender:</td>
    <td>
	<?php
	if($row[10]=="male"){
	echo "<input type='radio' name='gender' value='male' checked required/> 
	Male<input type='radio' name='gender' value='female'/> Female ";
	}
	else{
	echo "<input type='radio' name='gender' value='male' checked required/> 
	Male<input type='radio' name='gender' value='female' checked/> Female ";
	
	}
	?>
	</td>
    <td></td>
    <td></td>
</tr>

<tr>
    <td><font color="#FF0000">*</font>Citizenship:</td>
    <td><input type="text" name="citizen" value="<?php echo $row[13]; ?>" required/>
    <td><font color="#FF0000">*</font>Civil Status:</td>
	<td>
	<select name=civil_status style="width:200px;">
			<?php	
					$selected="";
					$option="";
					switch($row[11]){
						case 'Single':$selected=" selected"; $option.="<option vale='Single' ".$selected.">Single</option>
																		<option vale='Married'>Married</option>
																		<option vale='Widowed'>Widowed</option>
																		";break;
						case 'Married':$selected=" selected"; $option.="
													<option vale='Single'>Single</option>
													<option vale='Married' ".$selected.">Married</option>
													<option vale='Widowed'>Widowed</option>";break;
						case 'Widowed':$selected=" selected"; $option.="
													<option vale='Single'>Single</option>
													<option vale='Married'>Married</option>
													<option vale='Widowed' ".$selected.">Widowed</option>";break;
					}
					echo $option;
			?>
			</select>
	</td>
 
</tr>
<tr>
    <td><font color="#FF0000">*</font>Religion:</td>
    <td><input type="text" name="religion" value="<?php echo $row[12]; ?>"/></td>
    <td><font color="#FF0000">*</font>Email Address</td>
    <td><input type="email" name="email" value="<?php echo $row[9]; ?>" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Address:</td>
    <td colspan="3"><input type="text" size="68"  name="address" value="<?php echo $row[8]; ?>" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact No.</td>
    <td><input type="text" name="contact" value="<?php echo $row[7]; ?>" required/></td>
 </tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td colspan="5"><font style="text-decoration:underline;" size="3">In Case of Emergency</font></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact Name:</td>
    <td><input type="text" name="e_name" value="<?php echo $row[14]; ?>" required/></td>
    <td><font color="#FF0000">*</font>Contact Address:</td>
    <td><input type="text" name="e_address" value="<?php echo $row[16]; ?>" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact Number:</td>
    <td><input type="text" name="e_number" value="<?php echo $row[15]; ?>" required /></td>
    <td><font color="#FF0000">*</font>Relationship:</td>
    <td><input type="text" name="relationship" value="<?php echo $row[17]; ?>"required/></td>
</tr>
<tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
	<td></td>
</tr>
<tr>
    <td colspan="5"><font style="text-decoration:underline;" size="3">User Account</font></td>
    <td></td>
    <td></td>
    <td></td>
</tr>

<tr>
    <td>Password:</td>
    <td><input id="name" type="password" name="password" value="<?php echo $row[3]; ?>"required/></td>
</tr>


<tr>
<td><br><input type="submit" name="submit" value="Update"></td>
</tr>
</table>
</form>
			<form action="emp_admin_viewempB.php" method="POST">
			<b>View Attendance of this Employee<br>
			<input type="hidden" name="asa" value="<?php echo $asa; ?>"><br>
			From:<input type="date" name="fdate"><br>
			To:<input type="date" name="tdate"><br>
			<input type="submit" name="submitdate" value="SUBMIT"><br>
			</b>
			</form>
			</center>
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