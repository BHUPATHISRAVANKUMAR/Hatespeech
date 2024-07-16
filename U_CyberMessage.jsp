<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comment Posting Status..</title>
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
.style31 {font-size: 30px}
.style33 {color: #1e5381; font-size: 30px; }
.style34 {color: #0000FF}
.style35 {font-size: 24px}
.style17 {font-size: 16px; color: #00CC00; font-weight: bold; }
.style36 {color: #FF0000}
.style37 {
	color: #FF00FF;
	font-weight: bold;
}
.style38 {
	color: #009900;
	font-weight: bold;
}
.style44 {font-weight: bold}
.style46 {color: #FF0000; font-weight: bold; }
.style47 {color: #FF00FF}
.style49 {
	color: #009900;
	font-size: 14px;
}
.style50 {
	color: #000000;
	font-size: 12px;
	font-weight: bold;
}
.style51 {color: #006600}
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
          <h2 class="style34"><span class="style35">Comment Posting Status.</span>.</h2>
          
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
          <span class="style46">
          <%
String p_Name =  request.getParameter("p_Name");
String username =  request.getParameter("username");
String tolower=request.getParameter("comment");
String comment = tolower.toLowerCase();
  try{      
  String s1="",s2="";
  String f="false";
  int g=0,v=0,c=0,t=0,s=0,k=0;
         		if(!(comment.equals("")))
				{
								
								
								
								
								
									   				   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
													   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
								
													   Date now = new Date();
								
													   String strDate = sdfDate.format(now);
													   String strTime = sdfTime.format(now);
													   String date = strDate + "   " + strTime;
													   
													   
													   	
							String query="select distinct(category) from filters"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(1);
								
									ArrayList al=new ArrayList();		
									String query1="select word from filters where category='"+s1+"'"; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									while ( rs1.next() )
									{
										
										s2=rs1.getString(1);
										String word=s2.toLowerCase();
										al.add(word);
									}
									ArrayList al1=new ArrayList();
									for(int i=0;i<al.size();i++)
									{
									
										String cmt=(String)al.get(i);
										if(comment.indexOf(cmt)>=0)
										{
										
											
											al1.add(cmt);
											++k;
											t=1;
											f="true";
					
											
										}
							
									
									}
									
								int count=al1.size();
							%>
         					 <span class="style36">
         					<%if(k==1)
							{
							
								
								out.print("<br/><br/>This is an Cyber Hate of speech Post, So this post can't be  submitted !!..<br/><br/>");
								++k;
							}%>
         					 </span><span class="style47">
         						 <%
							if(f.equals("true"))
							{
							
									%>
		 						 </span></span>
									  <p><strong><span class="style49">Type :</span><span class="style47"> <%=s1%></span></strong></p>
									  <p><strong><span class="style49">Count :</span><span class="style47"> <%=count%></span></strong></p>
									  <p><strong><span class="style49">Words :</span><span class="style47"> <%=al1%></span></strong></p>
									  <p class="style50">===============================</p>
									  <span class="style46"><span class="style47">
									  <%
									     
												//Set tt=new HashSet();
									  			//Inserting into CyberWords table...
												//String query6="select * from cyberwords where user='"+username+"' and post='"+p_Name+"' and (type='"+s1+"')"; 
												//Statement st6=connection.createStatement();
												//ResultSet rs6=st6.executeQuery(query6);
												//if ( rs6.next() )
												//{
													//tt.add(rs6.getString(5));
													//al2.addAll(al1);
													//for(int ii=0;ii<al1.size();ii++)
													//{
														//	tt.add(al1.get(ii));
												
													
													//}
													
													//	String con=off+al1;
										
													//	String query8="update cyberwords set word='"+tt+"' where user='"+username+"' and post='"+p_Name+"' and (type='"+s1+"')"; 
														//Statement st8=connection.createStatement();
														//ResultSet rs8=st8.executeQuery(query8);
												
												
									  																																														
												//}
												//else
												//{
												
												
													
													Statement st7 = connection.createStatement();
													String query7 ="insert into cyberwords(user,post,type,word,count,dt) values ('"+username+"','"+p_Name+"','"+s1+"','"+al1+"','"+count+"','"+date+"')";
														
													st7.executeUpdate (query7);
													
												
												//}
												
												
												
									  
									  
										al.clear();
							
									f="false";
							
							}	}
													
													   
													   
													   
							if(t==1)
							{
							
												Statement st2 = connection.createStatement();
												String query2 ="insert into cybercomments(user,post,comment,dt) values ('"+username+"','"+p_Name+"','"+comment+"','"+date+"')";
													
												st2.executeUpdate (query2);
													
																%>
																<br/>
		  </span></span>
																  <p class="style47"><a href="U_CyberFriendsPosts.jsp" class="style44 style37">Back</a></p>
																<%	
												
							}
							else if(t!=1)
							{
							
													Statement st3 = connection.createStatement();
													String query3 ="insert into postcomments (user,title,comment,date) values ('"+username+"','"+p_Name+"','"+comment+"','"+date+"')";
													
													int a=st3.executeUpdate (query3);
													if(a>0)
													{
													
											
																%>
																<br/>
																  </p>
																  <p class="style16 style38 style51">Commented Successfully..</p>
																  <p class="style17">&nbsp;</p>
																  <p><a href="U_CyberFriendsPosts.jsp" class="style44 style37">Back</a></p>
													 			<%
													}
													
								
								}
								else{}
							
							
		}
		else
		{
		
			  %>
			  <br/>
			  <p class="style46 style36"><strong>Enter Your Comment !!..</strong></p>
			  <p class="style17">&nbsp;</p>
			  <p><a href="U_CyberFriendsPosts.jsp" class="style44 style37">Back</a></p>
			  <%
		}
	connection.close();
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>
<div></div>
       
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
            <li><a href="#">Home</a></li>
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
