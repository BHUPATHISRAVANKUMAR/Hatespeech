<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Filters..</title>
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
.style33 {color: #009900; font-size: 30px; }
.style34 {
	color: #FF6600;
	font-size: 30px;
}
.style39 {font-size: 13px; font-weight: bold; color: #6666FF; }
.style35 {color: #9900FF;
	font-weight: bold;
}
.style36 {color: #9900FF}
.style12 {color: #009900}
.style40 {
	font-size: 14px;
	font-weight: bold;
	color: #6666FF;
}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style59 {color: #9900FF;
	font-weight: bold;
	font-size: 12px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
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
          <h2 class="style1"><span class="style34"><span class="style12">Adding Filters..</span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <form action="S_AddFilters1.jsp" method="post"  name="form1" id="form1">
              <table width="648" border="0" align="center">
                <tr>
                  <td width="176" height="51"><div align="center"><span class="style39"> Select Filter </span> <span class="style40">:</span></div></td>
                  <td width="462"><label>
                    <select name="filter">
						 <option> Select </option>
						 <option> Violence </option>
						 <option> Vulgur </option>					 
						 <option> Offensive </option>					 
						 <option> Hate </option>
						 <option> Sexual </option>		
				    </select>
                  </label></td>
                </tr>


                <tr>
                  <td height="63"><div align="center"><span class="style39">Enter Word</span>  <span class="style40">:</span></div></td>
                  <td>
                      <label>
                      <input name="word" type="text" size="40" />
                      </label>
                  </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="26"><label></label></td>
                  <td><label>
                    <input type="submit" name="Submit" value="Add" />
                    <input type="reset" name="Submit2" value="Reset" />
                  </label></td>
                </tr>
              </table>
            </form>
            <div align="right">
              <p class="style35"><a href="ServerMain.jsp" class="style36">Back</a></p>
            </div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style31"><span class="style33">All Filter Words..</span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img">
            <div>
              
                <table width="636" border="1" align="center"  cellpadding="0" cellspacing="0">
                  
                  <%@ include file="connect.jsp" %>
                  <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int j=1;
						try 
						{
						   
							
								ArrayList al=new ArrayList();
									
						%>		
				  <tr>
                    <td width="124" height="40" align="center"  valign="middle"><div align="center" class="style5 style56 style57">Violence</div></td>
                    <td width="506" align="center" valign="middle" >
					  <span class="style10">
					<% 
						String query11="select word from filters where category='Violence'"; 
						Statement st11=connection.createStatement();
						ResultSet rs11=st11.executeQuery(query11);
						while ( rs11.next() )
						{
							s2=rs11.getString(1);
							al.add(s2);
						}
									
                      
					  out.println(al);
					  al.clear();%>                    
					  </span></td>
                  </tr>	
             
                  <tr>
                    <td height="40" align="center"  valign="middle"><div align="center" class="style5 style56 style57">Vulgur</div></td>
                    <td align="center" valign="middle" >
                      <span class="style10">
                    <% 
						String query12="select word from filters where category='Vulgur'"; 
						Statement st12=connection.createStatement();
						ResultSet rs12=st12.executeQuery(query12);
						while ( rs12.next() )
						{
							s2=rs12.getString(1);
							al.add(s2);
						}
									
                      
					  out.println(al);
					  al.clear();%>                    
                      </span></td>
                  </tr>
                  <tr>
                    <td height="36" align="center"  valign="middle"><div align="center" class="style5 style56 style57">Offensive</div></td>
                    <td align="center" valign="middle" >
                      <span class="style10">
                    <% 
						String query13="select word from filters where category='Offensive'"; 
						Statement st13=connection.createStatement();
						ResultSet rs13=st13.executeQuery(query13);
						while ( rs13.next() )
						{
							s2=rs13.getString(1);
							al.add(s2);
						}
									
                      
					  out.println(al);
					  al.clear();%>                    
                      </span></td>
                  </tr>
                  <tr>
                    <td height="38" align="center"  valign="middle"><div align="center" class="style5 style56 style57">Hate</div></td>
                    <td align="center" valign="middle" >
                      <span class="style10">
                    <% 
						String query14="select word from filters where category='Hate'"; 
						Statement st14=connection.createStatement();
						ResultSet rs14=st14.executeQuery(query14);
						while ( rs14.next() )
						{
							s2=rs14.getString(1);
							al.add(s2);
						}
									
                      
					  out.println(al);
					  al.clear();%>                    
                      </span></td>
                  </tr>
                  <tr>
                    <td height="37" align="center"  valign="middle"><div align="center" class="style5 style56 style57">Sexual</div></td>
                    <td align="center" valign="middle" >
                      <span class="style10">
                    <% 
						String query15="select word from filters where category='Sexual'"; 
						Statement st15=connection.createStatement();
						ResultSet rs15=st15.executeQuery(query15);
						while ( rs15.next() )
						{
							s2=rs15.getString(1);
							al.add(s2);
						}
									
                      
					  out.println(al);
					  al.clear();%>                    
                      </span></td>
                  </tr>
                  <%
				 		
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                </table>
                <p>&nbsp;</p>
                <p align="right"><a href="ServerMain.jsp" class="style59">Back</a></p>
              </form>
            </div>
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
              <p><a href="S_AddFilters.jsp">Home</a></p>
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
