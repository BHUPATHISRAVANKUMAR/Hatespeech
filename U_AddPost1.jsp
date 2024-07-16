<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Posts Status..</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style15 {font-size: 14px;
	color: #FF0000;
	font-weight: bold;
}
.style17 {font-size: 16px; color: #00CC00; font-weight: bold; }
.style30 {color: #FF00FF}
.style44 {font-size: 12px;
	color: #FF00FF;
	font-weight: bold;
}
.style46 {font-size: 16px; color: #FF9900; font-weight: bold; }
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
          <h2 class="style1"><span class="style34"><span class="style12">Add Posts Status.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <div>
            <%@ include file="connect.jsp" %>
			<%@ page import="java.io.*"%>
			<%@ page import="java.util.*" %>
			<%@ page import="java.util.Date" %>
			<%@ page import="com.oreilly.servlet.*"%>
			<%@ page import ="java.text.SimpleDateFormat" %>
              <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,title=null,uses=null,description=null,message=null,dob=null,gender=null,pincode=null,location=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("title"))
							{
								title=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("textarea2"))
							{
								description=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("textarea"))
							{
								uses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("textarea3"))
							{
								message=multi.getParameter(paramname);
							}
						}

						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from posts where 1=2" ; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
              </p>
              <p class="style15">Title Name Already Exist..</p>
              <p class="style15">&nbsp;</p>
              <p align="left" class="style10"><a href="U_AddPost.jsp" class="style30">Back</a></p>
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
					   
					   
					   
					   
					   
					 	  String user=null;
						  user=(String)application.getAttribute("uname");
					
PreparedStatement ps=connection.prepareStatement("insert into posts(user,title,uses,description,message,date,image) values(?,?,?,?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,title);
						ps.setString(3,uses);	
						ps.setString(4,description);
						ps.setString(5,message);
						ps.setString(6,date);
						ps.setBinaryStream(7, (InputStream)fs, (int)(file1.length()));	
				       
						int x=ps.executeUpdate();
						if(x>0)
						{
								  %>
								  <p class="style46">Post Added  Successfully..</p>
								  <p class="style17">&nbsp;</p>
								  <p><a href="UserMain.jsp" class="style44">Back</a></p>
								  <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
              </p>
            </div>
          </div>
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
              to hurt their peers� feelings because they do not need to face 
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
        <p align="justify">Social Media is ��a group of Internet based 
          applications that build on the ideological and 
          technological foundations of Web 2.0, and that allow the 
          creation and exchange of user-generated content.�� Via social 
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
