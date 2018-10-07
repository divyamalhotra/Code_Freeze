<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Metal Mania' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css?family=Mali:500" rel="stylesheet">
    <title>Code Freeze</title>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
<% 
try 
{
	String str=(String)session.getAttribute("teamname");
	 ResultSet rs;
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
  Statement stat = con.createStatement();
  
 
  rs=stat.executeQuery("select * from C_TEAM where team_name='"+str+"' ");
  stat.executeUpdate("Update C_TEAM set Q_Id='L0' where team_name='"+str+"'");
  %>
    
 <div id="clg"><h2>INDIRA GANDHI DELHI TECHNICAL UNIVERSITY FOR WOMEN</h2>
    
    <h2>PRESENTS</h2></div>
    <br><br><br><br><br>
     <script >
    function openNav() {
        document.getElementById("sidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.getElementById("clg").style.marginLeft = "20%";
        document.getElementById("c1").style.marginLeft = "4%";
        document.getElementById("c2").style.marginLeft = "9%";
    }

    function closeNav() {
        document.getElementById("sidebar").style.width = "0px";
        document.getElementById("main").style.marginLeft= "0";
        document.getElementById("clg").style.marginLeft="0%";
        document.getElementById("c1").style.marginLeft="0%";
        document.getElementById("c2").style.marginLeft="0%";
    }

    </script>
    
    <div id="sidebar" class="sidenav">
        <span style="cursor:pointer " class="closebtn" onclick="closeNav()">&times;</span>
  <a href="res.jsp">Resume Game</a>
  <a href="level1.html">Start Game</a>
  <a href="instructions.html" target="_blank">Instructions</a>
    </div>
  <div id="c2">  <h1>CODE FREEZE</h1></div>
    <div id="main">
  <span style="font-size:50px;cursor:pointer" onclick="openNav()">&#9654; </span>
    </div>
   
    <div class="line" id="c1">Code, Freeze,<strong>  Win! </strong> </div>
   <%}catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}%>
   
</body>
</html>
