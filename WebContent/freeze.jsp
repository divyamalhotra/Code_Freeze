<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
		<link href="https://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" rel="stylesheet">
	<title>Freezed</title>
<style>
body{
	/*background-image: url("bg2.gif");*/
	background-position:absolute;
	background-size:cover;	
	/*font-family: 'VT323', monospace;*/
	font-family: 'Love Ya Like A Sister', cursive;
}
#myTimer,#demo{
margin-left:-110%;
font-family:timerfont;
font-size:30px;
position:relative;
}
.btnEnable {
  cursor:pointer;
}

.btnDisable {
  cursor:wait;
}

#hd{
    margin-left: 90%;
    font-family: 'Love Ya Like A Sister', cursive;
    font-size: 100px;
}
@font-face {
font-family:timerfont;
src:url(DIGITALDREAM.ttf);
}

.content{
	float: left;
	/*font-size: 50px;*/
	vertical-align: middle;
	color:white;
	margin-left:40%;
	padding: 10%;
	position: absolute;
    bottom: 0;
    /*background: rgba(0, 0, 0, 0.5);*/  
    font-family: 'Love Ya Like A Sister', cursive;	
    color: #14043A;
    padding: 20px;
    top: 20px;
    margin-top: 10px;
  }
#myVideo {
    position: fixed;
    right: 0;

    min-width: 100%; 
    min-height: 100%;
}
video{
	object-fit: fill;
}

/* Add some content at the bottom of the video/page */

.sub_content{
	position: absolute;
	margin-top: 20px;
	font-size: 80px;
}
#mybtn {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  
}
#sub{
margin-top:-150px;}
input[type=submit]{
border-radius:20px;
margin-left:-120%;}
#mybtn:hover {background-color: #3e8e41}

#mybtn:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
<link href="https://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
 		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
	<!--<iframe src="https://giphy.com/embed/at2U9pDbkLahi" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/head-headbanging-headbanger-at2U9pDbkLahi">via GIPHY</a></p>-->
	<video autoplay muted loop id="myVideo">
  <source src="bg.mp4" type="video/mp4">
</video>
<div class="content">
	 <div id="demo">Time Left: </div><div id="myTimer"></div>
	<div class="sub_content">
		<div id="hd">OOPS!!<br> Freezed</div>
<form id="sub" action="res.jsp">
<input type="Submit" id="myBtn" class="btnDisable" disabled  value="Please wait.." ></input>
</form>
	</div>
	
	</div>
	<script>

	function place(){
	<%
	
	
	 //String str="Hi";
	 String str="Abbb";
	try
	 {
	 
		//String str=(String)session.getAttribute("teamname");
	 
	    Class.forName("oracle.jdbc.OracleDriver");
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
       Statement stat = con.createStatement();
      // String str=request.getParameter("teamname");
       ResultSet rs=stat.executeQuery("select * from c_team where team_name='"+str+"'");
       String level=new String();
      
       level="";
     if(rs.next())
       { 
       	 level=rs.getString(2);
       	 //System.out.print(level);
       	 if(level.equals("L11"))
         {
         	%>
         	 document.getElementById("sub").action ="level1.html";
     
         
     <%}
         else if(level.equals("L12"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques12.jsp";
     
         <%} 
         else if(level.equals("L13"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques13.jsp";
     
         <%} 
         else if(level.equals("L14"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques14.jsp";
             <%} 
         else if(level.equals("L21"))
         {
         	%>
         	
     document.getElementById("sub").action ="level2.html";
     
         <%} 
         else if(level.equals("L22"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques22.jsp";
    
         <% } 
         else if(level.equals("L23"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques23.jsp";
         <% }
         else if(level.equals("L31"))
         {
         	%>
         	
     document.getElementById("sub").action ="level3.html";
     
         <%} 
         else if(level.equals("L32"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques32.jsp";
    
         <% } 
         else if(level.equals("L33"))
         {
         	%>
         	
     document.getElementById("sub").action ="ques33.jsp";
         <% }
         else if(level.equals("L0"))
         {
        	 %>
        	 document.getElementById("sub").action="mainpage.jsp";
       <%  }
  else if(level.equals("LLL"))
  {
 	 %>
 	 document.getElementById("sub").action="end.html";
<%  }
          else
    	 { %>
    	 document.getElementById("sub").action="Registration.jsp";
    	<% }
	   }%>
	 } </script>
             
<%   
}catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}
%>
<script type="text/javascript">
var myTimer = document.getElementById('myTimer');
var myBtn = document.getElementById('myBtn');
window.onload = countDown;


var distance = 120;
	
function countDown() {


		var hours = Math.floor(distance/( 60 * 60));
		var minutes = Math.floor((distance % ( 60 * 60)) / 60);
		var seconds = Math.floor(distance %  60);
	// Display the result in the element with id="demo"

	// If the count down is finished, write some text 
	document.getElementById("myTimer").innerHTML = //hours + " Hours "
	   minutes + " Minutes " + seconds + " Seconds ";
	if (distance <= 0) {
		document.getElementById("myBtn").removeAttribute("disabled");
		document.getElementById("myBtn").classList.add("btnEnable");
		document.getElementById("myBtn").classList.remove("btnDisable");
	    document.getElementById("myBtn").value = "Click Me!";
	   // document.getElementById("myBtn").style.marginLeft="-20px";
return;
}
	
	       distance=distance-1;
	window.setTimeout(countDown, 1000);
	}

	
</script>
</body>    
</html>