<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.container {
margin-top:2%;
  background-color: #D8BFD8;
  opacity:0.3;
  font-weight:bold;
  height: 100%;
  display: flex;
	
  text-align: center;

}
body{
	background-image: url("bg8.jpg");
	background-position: -200%;
		background-attachment:fixed;
	background-size:cover;	
/*background-size: 25% 100%;*/
	background-repeat: no-repeat;
	/*font-family: 'VT323', monospace;*/
	font-family: 'Love Ya Like A Sister', cursive;
}
.col-sm-3{
margin-left:10%;
}
.page-header{
margin-left:5%;
}
.card{
margin-bottom:20px;
background:#F0F8FF	;
border-radius: 20px;
}
#users{
display: grid;
    grid-gap: 50px;
        grid-template-columns: 300px 300px 300px;
        /*background-color: #fff;*/
        color: #000;
        left: 13%;
        top:35px;}
.card-body{
	text-align: center;
	font-size: 25px;
	
}
.card-title{
	font-size: 30px;
}

.myButt {
  outline: none;
  border: none;
  padding: 10px;
  display: block;
  margin: 25px auto;
  cursor: pointer;
  font-size: 25px;
  background-color: #87CEFA;
  position: relative;
  /*border: 2px solid #fff*/;
  transition: all 0.5s ease;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  width: 200px;
  border-radius: 5px;
}
.four {
  overflow: hidden;
}
.four span {
  color: #fff;
  display: inline-block;
  transition: all 0.3s ease;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;

}
.four .icon {
  position: absolute;
  left: -40px;
  top: -7px;
  color: 	#fff;
  padding: 20px;
 /* background-color: #87CEFA;*/
  transition: all 0.3s ease;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
}
.four:hover .icon {
  left: 25px;
}
.four:hover span {
  color: 	#fff;
  margin-left: 30px;
}
.button {
  border-radius: 4px;
  background-color: #87CEFA;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 40px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
    right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chance to Freeze</title>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="" link="#2C003F">
	<div class="page-header">
  <h1 style="font-size:90px; color: #fff;">Freeze Or Skip</h1>
  <button id="sub" class="button" style="margin-top: -100px;
    margin-left:60%; height:90px;width:480px;" onclick=""><span style="margin-top: -5px;">Skip</span></button>
</div>
 <div class='row'><div id="users" class="col-sm-3"> </div></div> 
 <!--  class="container"   style="color:#9932CC;"-->
<%
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
	String team=(String)session.getAttribute("teamname");
//String team="HI";
	Statement stat = con.createStatement();
	ResultSet rs1;
	String level=new String();
	rs1=stat.executeQuery("select Q_id from c_team where team_name='"+team+"'");
	if(rs1.next())
	{
		level=rs1.getString(1);
	}
	//System.out.println(level);
	ResultSet rs=stat.executeQuery("Select * from c_team where not TEAM_NAME ='"+team+"'and freeze=0 and active=1");
	%>
	<script>
	<% if(level.equals("L11"))
    {
    	%>
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques11.jsp";
					}

    
<%}
    else if(level.equals("L12"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques12.jsp";
					}

    <%} 
    else if(level.equals("L13"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques13.jsp";
					}

    <%} 
    else if(level.equals("L14"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques14.jsp";
					}
        <%} 
    else if(level.equals("L21"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="success.jsp";
					}

    <%} 
    else if(level.equals("L22"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques22.jsp";
					}

    <% } 
    else if(level.equals("L23"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques23.jsp";
					}
    <% }
    else if(level.equals("L31"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="success.jsp";
					}

    <%} 
    else if(level.equals("L32"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques32.jsp";
					}

    <% } 
    else if(level.equals("L33"))
    {
    	%>
    	
    	document.getElementById("sub").onclick=function(){
				window.location.href="ques33.jsp";
					}
    <% }
    else if(level.equals("L0"))
    {
   	 %>
   	document.getElementById("sub").onclick=function(){
			window.location.href="mainpage.jsp";
				}
  <%  }
    else if(level.equals("LLL"))
    {
   	 %>
   	document.getElementById("sub").onclick=function(){
			window.location.href="end.html";
				}
  <%  }
     else
	 { %>
	document.getElementById("sub").onclick=function(){
		window.location.href="Registration.jsp";
			}
	<% }
	 
%> 
	</script>
<%	while(rs.next())
	{
		String tm=rs.getString(1);
		int sc=rs.getInt(3);
		%>
		<script>
	
		var div=document.getElementById("users");
		var u="<%=tm %>";
		var sc="<%=sc%>";
		var lk="user.jsp?user="+u;
		div.innerHTML+= "<div class='card'><div class='card-body'><h5 class='card-title'>"+u+"</h5> <p class='card-text'>Score:"+ sc +"</p><a href='" +lk+"'><button class='myButt four'><div class='icon'>&#x2744;</div><span>Freeze</span></button></a></div></div>"; 
		</script>
	
	
		<%
	
}}
catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}
%>
</body>
</html>