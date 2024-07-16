<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Cyber Hate of speech Comments..</title>
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
.style73 {color: #FF6600}
.style77 {font-size: 14px}
.style79 {color: #666666}
.style80 {font-size: 12px}
.style81 {font-family: "Courier New", Courier, monospace}
.style82 {
	color: #FF0000;
	font-weight: bold;
	font-family: "Courier New", Courier, monospace;
	font-size: 12px;
}
.style17 {color: #0000FF}
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
          <h2 class="style1"><span class="style34"><span class="style12">Cyber Hate of speech Comments by <span class="style17 style17"><%=(String)application.getAttribute("uname")%></span> ..</span></span></h2>
          <p class="style1">&nbsp;</p>
          <div>
			<%@ include file="connect.jsp" %>
			<%
					
					try
					{
	
					String loguser = (String)application.getAttribute("uname");
			
					String str1="select distinct(post) from cybercomments where user='"+loguser+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{		
									//int i=rs1.getInt(1);
									String p_Name = rs1.getString(1);
									String str2="select * from posts where title='"+p_Name+"' "; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(str2);
									if ( rs2.next() )
									{
									
										int i=rs2.getInt(1);
										String creator = rs2.getString(2);
										String date = rs2.getString(7);
						
						
			%>
              <table border="1" align="left" cellpadding="0" cellspacing="0" >
                  <tr >
                    <td width="146" rowspan="3" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                      <div align="center"><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:120px; height:120px;" />
                        </a> </div>
                    </div></td>
                    <td width="196" height="47" ><div align="center" class="style70 style73">Post Title  </div></td>
                    <td width="230"><div align="center" class="style69"><strong><%= p_Name%></strong></div></td>
                  </tr>
                  <tr >
                    <td height="47" ><div align="center" class="style70"> Created By </div></td>
                    <td><div align="center" class="style69"><strong><%= creator%></strong></div></td>
                  </tr>
                  <tr >
                    <td height="47" ><div align="center" class="style70">Date</div></td>
                    <td><div align="center" class="style69"><strong><%= date%></strong></div></td>
                  </tr>
                
								 <% 
								 	String str3="select comment,dt from cybercomments where post='"+p_Name+"' and user='"+loguser+"'";  
									Statement st3=connection.createStatement();
									ResultSet rs3=st3.executeQuery(str3);
									int a=0;
									while ( rs3.next() )
									{		
										String comment = rs3.getString(1);
										String date1 = rs3.getString(2);
						
							
							/*Statement stmt3=connection.createStatement();
							String strQuery3 = "select requestfrom,requestto from frequest where ((requestfrom ='"+loguser+"' and requestto='"+c_user+"') ||(requestfrom ='"+c_user+"' and requestto='"+loguser+"'))and status ='Accepted' ";
							ResultSet rs3 = stmt3.executeQuery(strQuery3);
							if(rs3.next()==true)
							{*/
								if(a==0){
					%>
                
                 <tr>
                   <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                       <div align="center">Date</div>
                   </div></td>
                   <td    colspan="2" columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                       <div align="center"> Comment Details</div>
                   </div></td>
                 </tr><%a=1;}%>
                 <tr>
                   <td valign="middle" height="48" style="color: #2c83b0;"><div align="left " class="style11 style71 style79 style80 style81" style="margin-left:20px;">
                       <div align="center"><strong><%= date1%></strong></div>
                   </div></td>
                   <td    colspan="2" columnspan="2" valign="middle" height="48" style="color: #2c83b0;"><div align="left " class="style11 style71 style79 style80 style81" style="margin-left:20px;">
                       <div align="center"><strong><%= comment%></strong></div>
                   </div></td>
                 </tr>
              <%

               }}%>
			  <p class="style82"> ========================================================================================</p>
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
           
        
          </div>

          <div class="clr"></div>
          <div align="right">
            <p>&nbsp;</p>
            <p><a href="UserMain.jsp" class="style63">Back</a></p>
          </div>
        </div>
        <div class="article">
          <h2 class="style31"><span class="style33">Detecting Hate Speech Categorization With Social Media Filters </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="198" height="208" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify">Detecting Hate Speech Categorization With Social Media Filters can be defined as aggressive, intentional
              actions performed by an individual or a group of people via 
              digital communication methods such as sending messages 
              and posting comments against a victim. Different from traditional 
              Hate of speech that usually occurs at school during faceto- 
              face communication, Detecting Hate Speech Categorization With Social Media Filters  can
              take place anywhere at any time. For bullies, they are free 
              to hurt their peers’ feelings because they do not need to face 
              someone and can hide behind the Internet. For victims, they 
              are easily exposed to harassment since all of us, especially 
              youth, are constantly connected to Internet or social media. 
              As reported, the Detecting Hate Speech Categorization With Social Media Filters victimization rate ranges
            from 10% to 40%.</p>
            <p>&nbsp;</p>
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
              <p><a href="U_MyCyberReviews.jsp">Home</a></p>
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
