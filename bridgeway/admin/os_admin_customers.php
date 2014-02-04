
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
					<li><a href="os_admin_index.php" accesskey="1" title="">Product Management</a></li>
					<li><a href="os_admin_orders.php" accesskey="2" title="">Orders</a></li>
					<li><a href="os_admin_customers.php" accesskey="3" title="">Customer</a></li>
					<li><a href="../logout.php" accesskey="5" title="">Log out</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Customer Management</h2>
			
		<script>
function validateForm()
{

var x=document.forms["Main_Form"]["firstname"].value;
if (x==null || x=="")
  {
  alert("First name must be filled out");
  return false;
  }
  
var x=document.forms["Main_Form"]["lastname"].value;
if (x==null || x=="")
  {
  alert("Last name must be filled out");
  return false;
  }
  
  
  var x=document.forms["Main_Form"]["contact"].value;
if (x==null || x=="")
  {
  alert("Contact must be filled out");
  return false;
  }
  
  var x=document.forms["Main_Form"]["email"].value;
  var atpos=x.indexOf("@");
  var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
  
  var x=document.forms["Main_Form"]["username"].value;
if (x==null || x=="")
  {
  alert("Username must be filled out");
  return false;
  }
  
  var x=document.forms["Main_Form"]["password"].value;
if (x==null || x=="")
  {
  alert("Password must be filled out");
  return false;
  }
  
  var x=document.forms["Main_Form"]["retype_password"].value;
if (x==null || x=="")
  {
  alert("Retype Password must be filled out");
  return false;
  }
  
   var x=document.forms["Main_Form"]["password"].value;
   var y=document.forms["Main_Form"]["retype_password"].value;
if (x != y)
  {
  alert("Password not match");
  return false;
  }
 
}
</script>

	<p>Please complete the fields below</p>
          
            <form id="Main_Form" name="Main_Form" action="signup_process.php" method='POST' onsubmit="return validateForm()">
            	
<table CELLSPACING=10 align="center">
<tr>
<td><label for="name">First Name </label></td><td><input id="name" type="text" name="firstname" value=""  required /></td>
</tr>
<tr>
<td><label for="name">Last Name </label></td><td><input id="name" type="text" name="lastname" value="" required /></td>
</tr>
<tr>
<td><label for="name">Contact No# </label></td><td><input id="name" type="text" name="contact" value=""  required /></td>
</tr>
<tr>
<td><label for="name">Email Address </label></td><td><input id="name" type="text" name="email" value="" required /></td>
</tr>
<tr>
<td><label for="name">User Name</label></td><td><input id="name" type="text" name="username" value=""  required/></td>
</tr>
<tr>
<td><label for="name">Password</label></td><td><input id="name" type="password" name="password" value="" required/></td>
</tr>
<tr>
<td><label for="name">Retype Password</label></td><td><input id="name" type="password" name="retype_password" value=""  required /></td>
</tr>
<tr>
<td></td><td><input name="submit" type="submit" value='Register'></td>
</tr></table>
      
            </form>
			
			<?php
$konek = mysql_connect("localhost","root","") or die("Cannot connect to server");

mysql_select_db("db_bridgeway",$konek) or die("Cannot connect to the database");
$query = mysql_query("select * from tb_user  WHERE level=3 order by id asc");
?>

<?php

if(mysql_num_rows($query)>0){ 
?>
<center>
<table border="1">
<tr>
    <td>Customers ID</td>
    <td>First Name</td>
    <td>Last Name</td>
    <td>Contact Number</td>
	   <td>Email Address</td>
	    <td>UserName</td>
		 <td>Password</td>
</tr>
<?php
    while($row= mysql_fetch_array($query)){ ?>
    <tr>
	<td><?=$row['id']?></td>
        <td><?=$row['first_name']?></td>
        <td><?=$row['last_name']?></td>
		   <td><?=$row['contact_no']?></td>
		      <td><?=$row['email']?></td>
			    <td><?=$row['username']?></td>

		
        <td><a href="os_edit_customer.php?id=<?=$row['id']?>">[Edit]</a>&nbsp;<a  href="delete_customer.php?id=<?=$row['id']?>" onclick="return confirm('Are you sure?')">[Delete]</a></td>
	
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
<a href="os_admin_printcust.php">[PRINT CUSTOMER REPORT]</a>
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