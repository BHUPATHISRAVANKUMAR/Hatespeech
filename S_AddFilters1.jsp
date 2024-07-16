<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Filters Status..</title>
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
.style35 {color: #9900FF;
	font-weight: bold;
}
.style12 {color: #009900}
.style43 {
	color: #FF0000;
	font-weight: bold;
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
      <div class="mainbar">
        <div class="article">
          <h2 class="style1"><span class="style34"><span class="style12">Adding Filters Status..</span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <p>
                     <%@ include file="connect.jsp" %>
			<%@ page import="java.io.*"%>
			<%@ page import="java.util.*" %>
			<%@ page import="java.util.Date" %>
			<%@ page import="com.oreilly.servlet.*"%>
			<%@ page import ="java.text.SimpleDateFormat" %>
              <%

try {	
	String filter=request.getParameter("filter");

	
	String word=request.getParameter("word");

		
		if((filter.equals(""))||(word.equals(""))||(filter.equals("Select")))
		{
		
				 %>
		  </p>
				  <p class="style18 style32 style43">Both Inputs Required !!..</p>
				  <br/>
				  <p><a href="S_AddFilters.jsp" class="style35">Back</a></p>
				  <%
				
		}
		else
		{
			String query1="select word from filters  where word='"+word+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if ( rs1.next()==true)
			   {
					
					  %>
					  </p>
					  <p class="style18 style32 style43">This Word Already Present In Selected Category !!..</p>
					  <br/>
					  <p><a href="S_AddFilters.jsp" class="style35">Back</a></p>
					  <%
				}
				else
				{
				
				
				
				
						   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
					   
					   
					String q1="insert into filters(category,word,dt) value('"+filter+"','"+word+"','"+date+"')";	
					Statement st=connection.createStatement();
					int a=st.executeUpdate(q1);
					if(a>0)
					{
						response.sendRedirect("S_AddFilters.jsp");
					}
				}
		}
} 
catch(Exception e)
{
out.print(e.getMessage());
}  
%>
          <div class="clr"></div>
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
