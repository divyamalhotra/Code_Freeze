<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="ques33.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Modern+Antiqua" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Hanalei+Fill" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Modern+Antiqua" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Level3</title>
	
<!--	TIMER  -->

<style>
.swal-button ,.swal-button--confirm{
    width: 400px;
    margin-right: 15px;
    height: 40px;
}
@font-face {
font-family: gamefont;
src: url(starcraft.ttf);

}
@font-face {
font-family:quesfont;
src:url(neverwinter.ttf);
}
@font-face {
font-family:opfont;
src:url(zrnic.ttf);
}
@font-face {
font-family:timerfont;
src:url(DIGITALDREAM.ttf);
}
</style>
<% 
try 
{
	String str=(String)session.getAttribute("teamname");
 //String str="Abbb";
	int score=0,frz=0;
	 ResultSet rs;
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HarryPotter","oracle123");
  Statement stat = con.createStatement();
  rs=stat.executeQuery("select * from C_TEAM where team_name='"+str+"' ");
  int time=1200;
  %>
  <%if(rs.next())
  {
	  frz=rs.getInt(4);
	  score=rs.getInt(3);
	  time=rs.getInt(6);
  }
  stat.executeUpdate("Update c_team set Q_id='L33' where team_name='"+str+"'");
  /* if(frz==1)
	{
	  stat.executeUpdate("Update C_team set freeze= 0 where team_name ='"+str+"'");
		RequestDispatcher rd=request.getRequestDispatcher("freeze.jsp");
		rd.forward(request, response);
	}*/
   %>	
<script language ="javascript" >
window.onload=DeselectListBox;
function DeselectListBox()
{
 var ListBoxObject=document.getElementById("select")

   for (var i = 0;i < ListBoxObject.length; i++)
   {
    if (ListBoxObject.options[i].selected )
    {
        ListBoxObject.options[i].selected = false   
    }
   }
}
var tim="<%=time%>";
var t;
var min = Math.floor((tim % ( 60 * 60)) / 60);
var sec = Math.floor(tim %  60);
        var f = new Date();
        function f1() {
            f2();
            noBack();
           // document.getElementById("starttime").innerHTML = "Your started your Exam at " + f.getHours() + ":" + f.getMinutes();
             
          
        }
        function f2() {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").innerHTML = "Time Left: " + min+ " Minute " + sec+" Seconds";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) === 0) {
                    min = parseInt(min) -1;
                    if ( parseInt(min) < 0 ) {
                        clearTimeout(tim);
                      //  location.href = "default5.aspx";
                        sweetAlert("Time Out", "", "error");
setTimeout(function(){
                        	
                        	window.location.href="end.html";
                        },4000);
                    }
                    else {
                        sec = 60;
                       // document.getElementById("showtime").innerHTML = "Your Left Time  is : " + min + " Minutes ," + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }
               
            }
t=min*60+sec;
        }
     

  /*      var checkboxes = document.querySelectorAll('input[type="checkbox"]'),
    setChecked = null;

(setChecked = function(i) {
  checkboxes[i].checked = true;

  if (i < checkboxes.length - 1) {
    setTimeout(setChecked, 180, i + 2);
  }
})(0);*/


    </script>	
<!--	TIMER END-->
	
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY 
	onpageshow="if (event.persisted) noBack();" onunload="" onload="f1()">

 
     <form id="form1" runat="server">
    <div>
    <table align="left" id="tm">
    <tr>
    <td>Team Name: <%out.print(str); %></td></tr>
    <tr>
    <td>Score: <%out.print(score); %></td></tr>
    </table>
      <table width="100%" align="center" id="t1">

        <tr>
          <td>
            <div id="starttime"></div><br />
            <div id="endtime"></div><br />
            <div id="showtime"></div>
          </td>
        </tr>
        <tr>
      </table>
      <br />
   

    </div>
    </form>
	<center><img src="three.svg.png" height="200px"></center>
	
      <div class="panel-heading" >
 <center> <div class="ques"> 3.  Consider the following function that takes reference to head of a Doubly Linked List as parameter. Assume that a node of doubly linked list has previous pointer as prev and next pointer as next.<br>
    <div style="font-weight:900; color:#696969;">void fun(struct node **head_ref)<br>
{<br>
    struct node *temp = NULL;<br>
    struct node *current = *head_ref;<br>
 
    while (current !=  NULL)<br>
    {<br>
        temp = current->prev;<br>
        current->prev = current->next;<br>
        current->next = temp;<br>
        current = current->prev;<br>
    }<br>
 
    if(temp != NULL )<br>
        *head_ref = temp->prev;<br>
}<br>
</div>
    Assume that reference of head of following doubly linked list is passed to above function 1 <--> 2 <--> 3 <--> 4 <--> 5 <-->6. What should be the modified linked list after the function call?
</div></center>   
  <center><div class="code">
   </div>
  </center>
  </div>
	<script type="text/javascript">
	var ans;
    function lang1(event) {
        var target = event.target || event.srcElement;
        ans=event.target.innerHTML;
        ans=encodeURIComponent(ans);
    }
</script>
	
	<div class="options">
	<ul style="margin-top: 140px;" id="list" onclick="lang1(event);">

  <li>2 <--> 1 <--> 4 <--> 3 <--> 6 <--> 5</li>
  <li>5 <--> 4 <--> 3 <--> 2 <--> 1 <--> 6</li>
  <li>6 <--> 5 <--> 4 <--> 3 <--> 2 <--> 1</li>
  <li>6 <--> 5 <--> 4 <--> 3 <--> 1 <--> 2</li>
</ul>
</div>

<div class="shiny-btn" id="bt" onclick="window.location=encodeURI('ans33.jsp?t='+t+'&as='+ans)">Submit</div>
</body>
<script type="text/javascript">
    var list = document.querySelector('ul');
      list.addEventListener('click', function(ev) { if( ev.target.tagName === 'LI') {
        var selectedEle = list.querySelector('.done');
        if(selectedEle && selectedEle != ev.target) {
            list.querySelector('.done').classList.toggle('done');
        }

        ev.target.classList.toggle('done');}}, false);
</script>
<%
	}catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}%>
</html>