<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style47 {color: #FF00FF}
-->
</style>
<head>
<title>All Friend Requests and Responses.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {font-size: 35px}
.style30 {
	color: #CC6600;
	font-size: 14px;
	font-weight: bold;
}
.style39 {color: #9900FF;
	font-weight: bold;
	font-size: 14px;
}
.style46 {color: #0000FF}
.style15 {color: #9900FF; font-weight: bold; font-size: 30px; }
.style16 {font-size: 30px}
.style17 {
	font-size: 16px;
	color: #FF00FF;
}
.style33 {font-size: 16px; color: #CC9900; }
.style34 {font-size: 18px; color: #00FF00; }
.style36 {font-size: 18px; color: #FF3300; }
.style38 {font-size: 18px; color: #666666; }
.style41 {font-size: 14px; color: #FFFFFF; }
.style20 {color: #CC9900}
.style22 {font-size: 14px}
.style23 {
	font-size: 12px;
	color: #FF0000;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style6"><a href="#">Detecting Hate Speech Categorization With Social Media Filters </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
		  <li><a href="#"></a></li>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>User </span></a></li>
          <li class="active"><a href="ServerLogin.jsp"><span>Admin</span></a></li>
		   <li><a href="#"></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
     
        <div class="article">
          <h2 class="style15"><span class="style31 style46 style12 style16"> All Friend Requests and Responses..</span></h2>
         
             
              <table width="943" border="1" align="left">
                <tr>
                  <td width="42" height="47" align="center" valign="middle"><div align="center" class="style33 style30"><span class="style3 style22">Si No. </span></div></td>
                  <td width="129" align="center" valign="middle"><div align="center" class="style22 style20 style36"><strong><span class="style3 ">Request From </span></strong></div></td>
                  <td width="146" align="center" valign="middle"><div align="center" class="style22 style20 style36"><strong><span class="style3 ">Requested User </span></strong></div></td>
                  <td width="148" align="center" valign="middle"><div align="center" class="style22 style20 style47 style34"><strong><span class="style3 ">Request To </span></strong></div></td>
                  <td width="180" align="center" valign="middle"><div align="center" class="style22 style20 style47 style34"><strong><span class="style3 "> Request To Name </span></strong></div></td>
                  <td width="111" align="center" valign="middle"><div align="center" class="style22 style20 style38"><strong><span class="style3 ">Status</span></strong></div></td>
                  <td width="141" align="center" valign="middle"><div align="center" class="style22 style20 style38"><strong><span class="style3 ">Date &amp; Time</span></strong></div></td>
                </tr>
                <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=1,j=0,k=0;

     try 
	{
           
					   String query="select * from  frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                <tr>
                  <td height="111"><div align="center" class="style39 style40 style47"><%=i%></div></td>
                  <td><div align="center" class="style41 style47">
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style39 style40 style47 style47"><%=s2%></div></td>
                  <td><div align="center" class="style17 style47">
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style39 style40 style47 style47"><%=s3%></div></td>
                  <td><div align="center" class="style39 style40 style47"><%=s5%></div></td>
                  <td><div align="center" class="style39 style40 style47"><%=s4%></div></td>
                </tr>
                <%
		  }
	  }
		
	  i+=1;  }
	

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
              
              <br/>
		  </table>
              <p><br/>
                  <br/>
       </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;              </p>
              <p align="right"><a href="ServerMain.jsp" class="style39 style23">Back</a></p>
        </div>
          <div class="clr"></div>
    </div>

      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>Project Concepts </h2>
        <p>Text Representation Learning.</p>
        <p>Detecting Hate Speech Categorization With Social Media Filters Detection.</p>
        <p>Analysis of Semantic Extension.</p>
        <p>Semantic Enhancement for mSDA.</p>
        <p> Construction of Hate of speech Feature Set.</p>
      </div>
      <div class="col c3">
        <h2>Social Media</h2>
        <p align="justify">Social Media is ‘’a group of Internet based 
          applications that build on the ideological and 
          technological foundations of Web 2.0, and that allow the 
          creation and exchange of user-generated content.‘’ Via social 
          media, people can enjoy enormous information, convenient 
          communication experience and so on. However, social media 
          may have some side effects such as cyberHate of speech, which 
          may have negative impacts on the life of people, especially 
        children and teenagers.</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
