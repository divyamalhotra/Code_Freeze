<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<%@ include file="ques11.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<% 
try 
{
	String str=(String)session.getAttribute("teamname");
	int tim=1200;
	tim=Integer.parseInt(request.getParameter("t"));
	String ans =new String();
	ans=request.getParameter("as");
	boolean f=false;
	//System.out.print(ans);
 //String str="Hi";
 //String str="Abbb";
	int score=0,frz=0;
	 ResultSet rs,rs1,rs2;
	// String ans=request.getParameter("select");
	// System.out.print(ans);
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
  Statement stat = con.createStatement();
  Statement stat1 = con.createStatement();
  Statement stat2=con.createStatement();
  //Statement stat2=con.createStatement();
  rs=stat.executeQuery("select * from C_TEAM where team_name='"+str+"' ");
 rs2=stat2.executeQuery("select count(*) from c_team where active =1 and freeze =0 and not team_name='"+str+"' ");
  if(rs.next())
  {	 
	  score=rs.getInt(3);
	  frz=rs.getInt(4);
  }
  stat.executeUpdate("Update C_team set time='"+tim+"' where team_name='"+str+"'");
	//System.out.print(x);
	if(ans.equals("3"))
	{
		f=true;
		score+=10;
		stat.executeUpdate("Update C_team set score= '"+score+"' where team_name ='"+str+"'");
	}
	stat.executeUpdate("Update c_team set Q_id='L12' where team_name='"+str+"'");
	rs1=stat1.executeQuery("select max(score) from c_team where active=1");
	if(rs1.next())
	{
		int s=rs1.getInt(1);
		if(rs2.next())
		{
			int c=rs2.getInt(1);
		
		//System.out.print(score);
		if(s==score && s!=0 && c>=1&&f==true)
		{

			if(frz==1)
			{
				stat.executeUpdate("Update C_team set freeze= 0 where team_name ='"+str+"'");
				RequestDispatcher rd=request.getRequestDispatcher("freeze.jsp");
				rd.forward(request, response);
			}
			if(s==score&&s!=0){
				RequestDispatcher rd=request.getRequestDispatcher("show_users.jsp");
				rd.forward(request, response);
				}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("ques12.jsp");
				rd.forward(request, response);

			}
			}
		}
		
		if(frz==1)
		{
			stat.executeUpdate("Update C_team set freeze= 0 where team_name ='"+str+"'");
			RequestDispatcher rd=request.getRequestDispatcher("freeze.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("ques12.jsp");
			rd.forward(request, response);
		}
	}
%>

<%
}catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}
%>
</body>
</html>