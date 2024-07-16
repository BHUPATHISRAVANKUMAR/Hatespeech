<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String p_Name =  request.getParameter("p_Name");
String username =  request.getParameter("username");
String comment =  request.getParameter("comment");

  try{      
         		if(!comment.equals(""))
				{
   		
						   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
						   
				Statement st1 = connection.createStatement();
				String query1 ="insert into postcomments (user,title,comment,date) values ('"+username+"','"+p_Name+"','"+comment+"','"+date+"')";
				
				int k=st1.executeUpdate (query1);
				  if(k>0)
				  {
				  				  %><br/><p class="style46">Commented Successfully..</p>
								  <p class="style17">&nbsp;</p>
								  <p><a href="U_FriendsPosts.jsp" class="style44">Back</a></p>
								  <%
				  }

		}
		else
		{
		
								 %><br/><p class="style46">Enter Your Comment !!..</p>
								  <p class="style17">&nbsp;</p>
								  <p><a href="U_FriendsPosts.jsp" class="style44">Back</a></p>
								  <%
		}

  }
  catch (Exception e){
    e.printStackTrace();
  }
%>

</body>
</html>