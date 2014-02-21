<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bridge Way</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><span class="icon icon-cog"></span><a href="#">Bridgeway</a></h1>
			<div id="menu">
				<ul>
					<li><a href="index.html" accesskey="1" title="">Home</a></li>
					<li><a href="#" accesskey="2" title="">About Us</a></li>
					<li class="current_page_item"><a href="signup.php" accesskey="3" title="">Sign up</a></li>
					<li><a href="login.php" accesskey="4" title="">Sign in</a></li>
					<li><a href="#" accesskey="5" title="">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div class="title">
			<h2>Sign up</h2>
		</div>
	</div>
</div>
<div class="wrapper">
	<div id="three-column" class="container">
		<div><span class="arrow-down"></span></div>

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
    	<font color="#FF0000">*</font><input type="text"  name="firstname"  placeholder="First Name" required/>	
    	<font color="#FF0000">*</font><input type="text"  name="middlename" placeholder="Middle Name"/>
   		<font color="#FF0000">*</font><input type="text"  name="lastname" placeholder="Last Name" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Gender:</td>
    <td><input type="radio" name="gender" value="male" required/> 
	Male<input type="radio" name="gender" value="female"/> Female </td>
    <td></td>
    <td></td>
</tr>

<tr>
    <td><font color="#FF0000">*</font>Citizenship:</td>
    <td><input type="text" name="citizen" placeholder="" required/>
    <td><font color="#FF0000">*</font>Civil Status:</td>
    <td>
    <select name="civil_status">
    <option value="Single" selected="selected">Single</option>
    <option value="Married">Married</option>
    <option value="Widowed">Widowed</option>
    </select>
    </td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Religion:</td>
    <td><input type="text" name="religion" /></td>
    <td><font color="#FF0000">*</font>Email Address</td>
    <td><input type="email" name="email" /></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Address:</td>
    <td colspan="3"><input type="text" size="68"  name="address" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact No.</td>
    <td><input type="text" name="contact" required/></td>
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
    <td><input type="text" name="e_name" required/></td>
    <td><font color="#FF0000">*</font>Contact Address:</td>
    <td><input type="text" name="e_address" required/></td>
</tr>
<tr>
    <td><font color="#FF0000">*</font>Contact Number:</td>
    <td><input type="text" name="e_number" required /></td>
    <td><font color="#FF0000">*</font>Relationship:</td>
    <td><input type="text" name="relationship" required/></td>
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
    <td>Username:</td>
    <td><input id="name" type="text" name="username" value="" required/></td>
</tr>
<tr>
    <td>Password:</td>
    <td><input id="name" type="password" name="password" value="" required/></td>
</tr>
<tr>
    <td>Retype Password:</td>
    <td><input id="name" type="password" name="retype_password" value="" required/></td>
</tr>

<tr>
<td><br><input name="submit" type="submit" value='Register'></td>
</tr>
</table>
            </form>
	</div>

<div id="copyright" class="container">
	<p>Copyright (c) 2014 Sitename.com. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.</p>
</div>
</div>
</body>
</html>