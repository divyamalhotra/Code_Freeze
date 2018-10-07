<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" content="text/html; charset=ISO-8859-1" >
<title>Registration Form</title>
<link href="style_register.css" rel="stylesheet" type="text/css">
<link href="hm.html" rel="stylesheet"  type="text/html">

<link href='https://fonts.googleapis.com/css?family=Henny Penny' rel='stylesheet'>

<link href='https://fonts.googleapis.com/css?family=Princess Sofia' rel='stylesheet'>

<link href='https://fonts.googleapis.com/css?family=Aldrich' rel='stylesheet'>

<link href='https://fonts.googleapis.com/css?family=Butcherman' rel='stylesheet'>

<link href='https://fonts.googleapis.com/css?family=Metal Mania' rel='stylesheet'>
<link href="https://fonts.googleapis.com/css?family=Share+Tech+Mono|Space+Mono" rel="stylesheet">
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
<h1 id="select"> IGDTUW</h1>
<h3 > CODE FREEZE Registration Form</font>
</h3>
<form action="regdata.jsp">

	<div> 
		<label for="tname"><h4><font size="5">Team Name * </font></h4></label>
	    <input style="min-height: 25px; font-size:22px" size=25 type="text" name="user_name" id="tname" placeholder="name" required>
	    <label for="tname" style="min-height: 15px;"><br />Enter your unique team name</label>
	</div>
	<div> 
		<label for="ename"><h4><font size="5">E-mail * </font></h4></label>
	    <input style="min-height: 25px; font-size:22px" size=25  type="email" name="user_mail" id="ename" placeholder="email" required>
	    <label for="ename" style="min-height: 15px;"><br />example@example.com</label>
	</div>
	<div > 
		<label for="cname"><h4><font size="5">Contact Number * </font></h4></label>
	    <input placeholder="contact" style="min-height: 25px; font-size:22px; width: 322px" name="user_phone"  max="9999999999" MIN ="1000000000" type="number" required>
	    <label for="cname" style="min-height: 15px;">
	    <br />Phone Number</label>
	</div>
	<div > 
		<label for="mname"><h4><font size="5">Name (Member 1) * </font></h4></label>
	    <input placeholder="first name" style="min-height: 25px; font-size:22px" size=10 type="text" name="user_mem1" id="mname" required> &nbsp;-&nbsp;
	    <input placeholder="last name" style="min-height: 25px; font-size:22px"  name="mem1_last" size="10">
	    <label for="cname" style="min-height: 13px;">
	    <br />First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name</label>
	</div>
	<div > 
		<label for="mname"><h4><font size="5">Name (Member 2) </font></h4></label>
	    <input placeholder="first name" style="min-height: 25px; font-size:22px" size=10 type="text" name="user_mem2" id="mname"> &nbsp;-&nbsp;
	    <input placeholder="last name" style="min-height: 25px; font-size:22px" name="mem2_last" size="10">
	    <label for="cname" style="min-height: 13px;">
	    <br />First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name</label>
	</div>
	
	
	<div > 
		<label for="mname" style="min-height: 15px;"><h4><font size="5">Any Team Member College Name * </font></h4></label>
	    <input placeholder="college" style="min-height: 25px; font-size:22px" size=25 type="text" name="user_cllg" id="mname" required> 
	</div>
	<div class="button">
     	<input type="submit"  value=" Submit" style="font-size:20pt;color:black;
background-color:white;border:4px solid grey;padding-top: 4px;
  padding-left: 3px; margin:20px; padding-right: 7px;
  padding-bottom: 3px;border-radius: 10px;font-family: AR ESSENCE;
   ">
     </div>
     
</form>
</body>
</html>
</body>
</html>