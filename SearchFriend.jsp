<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Friends..</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style31 {font-size: 30px}
.style22 {font-size: 14px}
.style32 {color: #FF00FF; font-weight: bold; font-size: 13px; }
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
          <li class="active"><a href="UserLogin.jsp"><span>User </span></a></li>
          <li><a href="ServerLogin.jsp"><span>Admin</span></a></li>
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
      <div class="mainbar">
        <div class="article">
          <h2 class="article style31">Search Friends..</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <form id="form1" name="form1" method="post" action="SearchFriend.jsp">
              <table width="314" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="126"><span class="style32">Enter Friend Name :</span></td>
                  <td width="174"><input type="text" name="keyword" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
                </tr>
              </table>
              <p align="right">&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style10">Back</a></p>
            </form>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style31">Results Found </h2>
          <p class="infopost">&nbsp;</p>
          <div align="justify">
            <p><a href="#">
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
	  			
						String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String username = request.getParameter("keyword");
						int i=0;
						try 
						{
						
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();
										
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
						
						
						//if(username!=""){
						   	
							%>
              </a> <span class="box">
              <%
							if(!username.equalsIgnoreCase(" "))
								{
									Statement st3 = connection.createStatement();
									String query3 ="insert into fsearch(username,keyword,dt) values('"+user+"','"+username+"','"+dt+"')";
									st3.executeUpdate (query3); 	   
								}
							
							
							
							String query="select * from user where  username!='"+user+"' and username  LIKE '%"+username+"%' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);
								
	  							
								
	  %>
            </span></p>
            <table border="3" width="518" style="margin:5px 10px 10px 5px;">
              <tr>
                <td rowspan="7" width="148" ><input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />                </td>
                <td width="118" align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>User Name:</strong></span></td>
                <td width="249" style="margin-left:20px; color:#000000;"><span class="style10"><%=s1%></span></td>
              </tr>
              <tr>
                <td align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>E-Mail:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><span class="style10"><%=s2%></span></td>
              </tr>
              <tr>
                <td align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>Mobile:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><span class="style10"><%=s3%></span></td>
              </tr>
              <tr>
                <td align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>Address:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><span class="style10"><%=s4%></span></td>
              </tr>
              <tr>
                <td align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>DOB:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><span class="style10"><%=s5%></span></td>
              </tr>
              <tr>
                <td align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>Gender:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><span class="style10"><%=s6%></span></td>
              </tr>
              <tr>
                <td height="46" align="left"><span class="style22" style="margin-left:20px; color:#FF3300;"><strong>Status:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><p class="style10"><%=s7%><span style="float:right"><a href="updaterequest.jsp?rname=<%=s1%>">
                    <input class="art-button" name="button" type="button" value="Request" />
                </a></span></p></td>
              </tr>
            </table>
            <p><span class="box">
              <%
				  			//}
				  
	  						}
							}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
            </span></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <p><a href="SearchFriend.jsp">Home</a></p>
              <p><a href="index.html">Log Out</a></p>
            </li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">Concepts</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="#">Detecting Hate Speech Categorization With Social Media Filters Detection</a></li>
            <li></li>
            <li><a href="#"> Text Mining</a></li>
            <li></li>
            <li><a href="#"> Word Embedding</a></li>
            <li></li>
            <li><a href="#"> Representation Learning</a></li>
            <li></li>
            <li><a href="#"> Stacked Denoising Autoencoders</a><br />
            </li>
          </ul>
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
