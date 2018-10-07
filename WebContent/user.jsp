<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<%@ include file="show_users.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="user_style.css" rel="stylesheet" type="text/css"/>
<title></title>
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
	String team=(String)session.getAttribute("teamname");
	//String team="HI";
 String str=request.getParameter("user");
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
  Statement stat = con.createStatement();
  stat.executeUpdate("Update C_TEAM set freeze=1 where team_name='"+str+"' ");
  %>
  <script>
   	<%
	
	//String str=(String)session.getAttribute("teamname");
	 //String str="Hi";
      // String str=request.getParameter("teamname");
       ResultSet rs=stat.executeQuery("select * from c_team where team_name='"+team+"'");
       String level=new String();
      
       level="";
     if(rs.next())
       { 
       	 level=rs.getString(2);
       //	System.out.print(level);
       	 if(level.equals("L11"))
            {
            	%>
            	setTimeout(function(){
						window.location.href="ques11.jsp";
							},100);
        
            
        <%}
            else if(level.equals("L12"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques12.jsp";
							},100);
        
            <%} 
            else if(level.equals("L13"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques13.jsp";
							},100);
        
            <%} 
            else if(level.equals("L14"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques14.jsp";
							},100);
                <%} 
            else if(level.equals("L21"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="success.jsp";
							},100);
        
            <%} 
            else if(level.equals("L22"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques22.jsp";
							},100);
       
            <% } 
            else if(level.equals("L23"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques23.jsp";
							},100);
            <% }
            else if(level.equals("L31"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="success.jsp";
							},100);
        
            <%} 
            else if(level.equals("L32"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques32.jsp";
							},100);
       
            <% } 
            else if(level.equals("L33"))
            {
            	%>
            	
            	setTimeout(function(){
						window.location.href="ques33.jsp";
							},100);
            <% }
            else if(level.equals("L0"))
            {
           	 %>
           	setTimeout(function(){
					window.location.href="mainpage.jsp";
						},100);
          <%  }
            else if(level.equals("LLL"))
            {
           	 %>
           	setTimeout(function(){
					window.location.href="end.html";
						},100);
          <%  }
             else
       	 { %>
       	setTimeout(function(){
				window.location.href="Registration.jsp";
					},100);
       	<% }
       	 }
	   %> 
   </script>
             
<%  
}catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}%>
</body>
</html>