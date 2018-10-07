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
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
 		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Resume</title>
<style>
body{
	background-image: url("bg1.jpg");
	background-position:center;
	background-attachment:fixed;
	background-size:cover;	
	/*font-family: 'VT323', monospace;*/
	font-family: 'Love Ya Like A Sister', cursive;
}
.content{
	float: left;
	font-size: 50px;
	vertical-align: middle;
	color:white;
	margin-left:40%;
	padding: 10%;
}


/* Add some content at the bottom of the video/page */
.content {
    position: relative;
    bottom: 0;
    /*background: rgba(0, 0, 0, 0.5);*/  	
    color:#021521;
    padding: 20px;
   
   
    font-size: 90px;
    margin-left:46.3%;
	

}
.sub_content{
	position: relative;
	margin-top: 20px;
	font-size: 80px;
}
form
		{
			position: absolute;
			top: 20%;
			left: 35%;
			width: 400px;
			height: 200px;
			background-color: #ffffff;
			padding: 10px;
			border-radius: 5px;
			border:0.5px solid black;
			margin-top: 40px;

		}
		h1{
			border-bottom: 1px solid black;
			text-align: center;
			font-size: 30px;
		}
		.btn{
			margin-right:20px;
			margin-top: 25px;
			}
</style>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
	<!--<iframe src="https://giphy.com/embed/at2U9pDbkLahi" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/head-headbanging-headbanger-at2U9pDbkLahi">via GIPHY</a></p>-->
	
<div class="content">
	<span style="color:#fff;">GOT INTERUPTTED?</span>
	<div class="sub_content">
		<form id="sub" action="">
		<div class="form_heading">
		<h1>Enter Your Team Name</h1>
		</div>
		<div class="form-group" style="margin-top: 25px;">
		<input type="text" class="form-control" name="name" required/>
		</div>
		<div class="form-group">
		<button type="submit" onclick="place()" class="btn btn-default btn-md btn-block btn-primary label1" value="Submit" name="user" >Submit</button>
	</div></form>
	<script>
	function place(){
	
	<%
	
	 
	try
	 {
	 
		String str1=(String)request.getParameter("name");
		session.setAttribute("teamname",str1);
	 
	    Class.forName("oracle.jdbc.OracleDriver");
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
       Statement stat = con.createStatement();
      // String str=request.getParameter("teamname");
       ResultSet rs=stat.executeQuery("select * from c_team where team_name='"+str1+"'");
       String level=new String();
      
       level="";
     if(rs.next())
       { 
       	 level=rs.getString(2);
       	 System.out.print(level);
       	 
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
            	
        document.getElementById("sub").action ="success.jsp";
        
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
            	
        document.getElementById("sub").action ="success.jsp";
        
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
       	<%} }
        %>
	 }
	   </script>
             
             <% 
         
         
        	 
        
        }catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}
%>
	</div>
</div>
</body>
</html>