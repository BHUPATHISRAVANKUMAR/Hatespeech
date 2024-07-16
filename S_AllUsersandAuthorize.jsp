<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Users and Authorize..</title>
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
.style1 {
	font-size: 35px;
	font-weight: bold;
}
.style6 {font-size: 35px}
.style12 {
	color: #009900;
	font-size: 30px;
}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style22 {font-size: 16px; color: #FFFFFF; }
.style30 {color: #FF00FF}
.style32 {color: #0000FF;
	font-size: 14px;
	font-weight: bold;
}
.style39 {color: #9900FF;
	font-weight: bold;
	font-size: 14px;
}
.style46 {color: #0000FF}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style54 {color: #009900}
.style55 {font-size: 14px}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style58 {color: #6699FF}
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
      <div class="mainbar">
        <div class="article">
          <h2><span class="style31 style46 style12">Authorize Users..</span></h2>
          <p>&nbsp;</p>
          <div>
            <form id="form1" name="form1" method="post" action="ServerAuthentication.jsp">
              <table width="630" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                <tr>
                  <td  width="26"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
                  <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Image</div></td>
                  <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
                  <td  width="121" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Email</div></td>
                  <td  width="97" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Address</div></td>
                  <td  width="109"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Status</div></td>
                </tr>
                <%@ include file="connect.jsp" %>
                <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(9);
								
								
								
								
								
							
						
					%>
                <tr>
                  <td height="0" align="center"  valign="middle"><p class="style22 style5 style37 style54 style55">&nbsp;</p>
                      <div align="center" class="style22 style5 style37 style54 style55">
                        <%out.println(i);%>
                        <p>&nbsp; </p>
                      </div></td>
                  <td width="116" rowspan="1" align="center" valign="middle" ><div class="style22 style5 style37 style54 style55" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
                  </a> </div></td>
                  <td height="0" align="center"  valign="middle"><p class="style22 style5 style20 style37 style54 style55">&nbsp;</p>
                      <div align="center" class="style22 style5 style20 style37 style54 style55">
                        <%out.println(s1);%>
                        <p>&nbsp; </p>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p class="style22 style5 style20 style37 style54 style55">&nbsp;</p>
                      <div align="center" class="style22 style5 style20 style37 style54 style55">
                        <%out.println(s2);%>
                        <p>&nbsp; </p>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p class="style22 style5 style20 style37 style54 style55">&nbsp;</p>
                      <div align="center" class="style22 style5 style20 style37 style54 style55">
                        <%out.println(s3);%>
                        <p>&nbsp; </p>
                      </div></td>
                  <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
                  <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                      <div align="center" class="style20 style37 style46">
                        <p><strong><a href="S_UserStatus.jsp?id=<%=i%>" class="style46"></a></strong></p>
                        <a href="S_UserStatus.jsp?id=<%=i%>" class="style32">waiting</a></div>
                  </div></td>
                  <%
						}
						else
						{
						%>
                  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58">

<a href="S_UserStatus1.jsp?id=<%=i%>" class="style32">Un Authorize</a></div>

 
                  </div></td>
                  <%
						}
						
						%>
                </tr>
                <%
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
                  <td  valign="baseline" height="0">&nbsp;</td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <p align="right"><a href="index.html" class="style10"></a><a href="ServerMain.jsp" class="style39">Back</a></p>
            </form>
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
		  	<li><a href="S_AllUsersandAuthorize.jsp">Home</a></li>
            <li><a href="index.html">Log Out </a></li>
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
