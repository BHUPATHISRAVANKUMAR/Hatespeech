	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			
			String id=request.getParameter("id");
			String str = "waiting";
       		Statement st1 = connection.createStatement();
       		String query1 ="update user set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("S_AllUsersandAuthorize.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
