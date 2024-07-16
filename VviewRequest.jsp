<table border=1 width=100%>
<caption> List of Friends Requests </caption> 

<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
                <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where status <> 'Accepted' and requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
										
											
						
					%>
                <tr>
                  <td  width="118" height="54" align="center" valign="middle" style="color:#000000;"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s1);%>
                  </span></td>
                  <td  width="127" height="54" align="center" valign="middle"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s3);%>
                  </span></td>
                  <td height="54" align="center"  valign="middle"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s4);%>
                  </span></td>
                  <td height="54" align="center"  valign="middle"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s5);%>
                  </span></td>
                  <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                  <td  width="101" valign="middle" height="54" style="color:#000000;"align="center"><a href="updaterequest1.jsp?rid=<%=j%>" class="style34">waiting</a></td>
                  <%
						}
						else
						{
						%>
                  <td  width="17" valign="middle" height="54" style="color:#000000;"align="center"><span class="style7">
                    <span class="style61">
                    <%out.println(status);%>
                    </span>&nbsp;</span></td>
                  <%
						}
						%>
                </tr>
                <%
						}
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                <tr>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                </tr>
              </table> 
              <p align="right">&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style46">Back</a></p>
            </div>
          </div>
     
      
</html>
