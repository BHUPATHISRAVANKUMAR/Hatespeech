<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Posts Details..</title>
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
.style31 {font-size: 30px}
.style33 {color: #1e5381; font-size: 30px; }
.style34 {
	color: #FF6600;
	font-size: 30px;
}
.style12 {color: #009900}
.style22 {font-size: 16px; color: #FFFFFF; }
.style63 {color: #9900FF;
	font-weight: bold;
	font-size: 12px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style15 {color: #FF0000}
.style69 {color: #FF00FF}
.style70 {
	color: #FF6600;
	font-weight: bold;
}
.style71 {
	font-weight: bold;
	color: #000000;
}
.style17 {color: #0000FF}
.style73 {color: #FF6600}
.style76 {color: #006600}
.style77 {font-size: 14px}
.style78 {font-family: "Courier New", Courier, monospace}
.style80 {font-size: 12px}
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
          <li class="img"><a href="UserLogin.jsp"><span>User </span></a></li>
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
          <h2 class="style1"><span class="style34"><span class="style12">Post <span class="style17"><%=request.getParameter("title")%></span> Details.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
  
            <div>
			<%@ include file="connect.jsp" %>
			<%
					
					try
					{
					String title=request.getParameter("title");
				
					String str1="select * from posts where title='"+title+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					if ( rs1.next() )
					{
						int i=rs1.getInt(1);
						String user = rs1.getString(2);
						String uses = rs1.getString(4);
						String description = rs1.getString(5);
						String comment = rs1.getString(6);
						String date = rs1.getString(7);
						
						
			%>
              <table border="1" align="left" cellpadding="0" cellspacing="0" >
                  <tr >
                    <td width="147" rowspan="4" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                      <div align="center"><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:120px; height:120px;" />
                        </a> </div>
                    </div></td>
                    <td height="47" ><div align="center" class="style70 style73">Created By  </div></td>
                    <td><div align="center" class="style69"><strong><%= user%></strong></div></td>
                  </tr>
                  <tr >
                    <td height="47" ><div align="center" class="style70"> Date  </div></td>
                    <td><div align="center" class="style69"><strong><%= date%></strong></div></td>
                  </tr>
                  <tr >
                    <td height="47" ><div align="center" class="style70">Post Uses  </div></td>
                    <td>
                          <textarea name="textarea2" cols="50" rows="6"><%= uses%></textarea>
                   
                    </td>
                  </tr>
                <tr >
                  <td width="123" height="74" ><div align="center" class="style70">Post Description  </div></td>
                  <td>
                        <textarea name="textarea" cols="50" rows="8"><%= description%></textarea>
                  </td>
                </tr>
               
                <tr>
                  <td height="74" ><div align="center"><strong><span class="style17" style="color:#FF6600">Creator's Message</span> </strong></div></td>
                  <td colspan="2"><div align="center" class="style69">
                    <div align="center"><strong><%= comment%></strong></div>
                  </div></td>
                </tr>
				 <%
						int a=0;
						String str2="select * from postcomments where title='"+title+"' "; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(2);
							String c_comment = rs2.getString(4);
							String c_date = rs2.getString(5);
						
							if(a==0){
						%>
                
                <tr>
                  <td  width="147" valign="middle" height="29" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                    <div align="center">Comment By</div>
                  </div></td>
                  <td  width="123" columnspan="2" valign="middle" height="29" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                    <div align="center">Date</div>
                  </div></td>
                  <td  width="302" height="29" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                    <div align="center">Comment Details</div>
                  </div></td>
                </tr>
              <%a=1;}%>

                <tr>
                  <td height="40"><div align="center" class="style78 style76 style10 style9 style80"><strong><%= c_user%></strong></div></td>
                  <td><div align="center" class="style78 style76 style10 style9 style80"><strong><%= c_date%></strong></div></td>
                  <td><div align="center" class="style78 style76 style10 style9 style80"><strong><%= c_comment%></strong></div></td>
                </tr>
               <%}%><br/>
                </table>
                <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
              
              <p>&nbsp;</p>
            </div>

          <div class="clr"></div>
          <div align="right">
            <p>&nbsp;</p>
            <p><a href="S_AllPosts.jsp" class="style63">Back</a></p>
          </div>
        </div>
  
          <div class="clr"></div>
  
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
              <p><a href="#">Home</a></p>
              <p><a href="index.html">Log Out </a></p>
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
