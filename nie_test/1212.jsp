<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="JavaScript" type="text/JavaScript">
function showhide_obj(obj,icon)
{
obj=document.getElementById(obj);
icon=document.getElementById(icon);
 if (obj.style.display=="none") 
  { 
        //指定文档中的对象为div,仅适用于IE;   
        div_list = document.getElementsByTagName("div");
        for (i=0; i< div_list.length;i ++)
        {
          thisDiv = div_list[i]; 
           if(thisDiv.id.indexOf("title")!=-1)//当文档div中的id含有list时,与charAt类似;
           {
            //循环把所有菜单链接都隐躲起来
           thisDiv.style.display="none";
           icon.innerHTML = "+";
           }
        } 
   myfont=document.getElementsByTagName("font");
   for(i=0;i<myfont.length;i++)
    {
    thisfont = myfont[i];
   }
    icon.innerHTML="-";
    obj.style.display=""; //只显示当前链接
}
 else
  {
  //当前对象是打开的，就封闭它;
   icon.innerHTML="+";
   obj.style.display="none";
   }
 }
function show_this(obj)
{
    obj=document.getElementById(obj);
    if (obj.id==obj.id) 
     {
       blinkicon=document.getElementsByTagName("font");
       for(x=0;x<blinkicon.length;x++)
        {
           if( blinkicon[x].id.indexOf("select")!=-1 && obj.id!=obj )
            {
               blinkicon[x].innerHTML=" ";
            }
        }
          obj.innerHTML=">"; 
     }
     else
     {
           obj.innerHTML=" ";
     }
}
</script>
<style type="text/css">
span{ width:100px;height:150px;margin-left:20px;}
font{font-weight:bold;}
body,td{font-family:Verdana, Arial, Helvetica, sans-serif; font-size:15px;color:#000000;padding-top:0px;padding-left:95px;}
div{cursor:default;border-top:1px solid gray ; border-left:1px solid white;border-right:1px solid gray;background-color:rgb(102,203,124);width:200px;}
pre{background-color:rgb(125,111,111); border:1px solid gray;color:blue;font-family:verdana;Arial;padding:50px;}
</style>
	<script id="jquery_182" type="text/javascript" class="library" src="/js/sandbox/jquery/jquery-1.8.2.min.js"></script>
	<script id="jqueryplugins1_jquery_cookie_13" type="text/javascript" class="library" src="/js/sandbox/jquery-plugins/jquery.cookie-1.3.js"></script>
</head>
<body>
<p>

<div style="line-height:25px;" onClick="showhide_obj('title1','icon1')"><font id='icon1'>+</font>财经</div>
<div id="title1" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf-8", "root", "123456");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from 财经 where channelName='财经'");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>

<div style="line-height:25px;" onClick="showhide_obj('title2','icon2')"><font id='icon2'>+</font>房产</div>
<div id="title2" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from fangchan");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>
<div style="line-height:25px;" onClick="showhide_obj('title3','icon3')"><font id='icon3'>+</font>教育</div>
<div id="title3" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from jiaoyu");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>
<div style="line-height:25px;" onClick="showhide_obj('title4','icon4')"><font id='icon4'>+</font>军事</div>
<div id="title4" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from junshi");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>

<div style="line-height:25px;" onClick="showhide_obj('title4','icon4')"><font id='icon5'>+</font>科技</div>
<div id="title4" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from keji");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>


<div style="line-height:25px;" onClick="showhide_obj('title4','icon4')"><font id='icon4'>+</font>汽车</div>
<div id="title4" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from qiche");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>


<div style="line-height:25px;" onClick="showhide_obj('title4','icon4')"><font id='icon4'>+</font>体育</div>
<div id="title4" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from tiyu");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>

<div style="line-height:25px;" onClick="showhide_obj('title4','icon4')"><font id='icon4'>+</font>游戏</div>
<div id="title4" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from youxi");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>

<div style="line-height:25px;" onClick="showhide_obj('title4','icon4')"><font id='icon4'>+</font>娱乐</div>
<div id="title4" style="background-color:#fffff3;line-height:22px;display:none;">
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useUnicode=true&characterEncoding=utf-8", "root", "zgq727");
				//使用Statement对象
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from yule");
				while (rs.next()) {
					%><span id="menu1_1" onMouseOver="this.style.backgroundColor='yellow'" onMouseOut="this.style.backgroundColor=''" οnclick="show_this('select1_1')"><font id='select1_1'></font><a href="del.jsp" target="_blank">+<%out.println(rs.getString(3));%></a></span><br/>
				<%}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
		%>
</div>
</p>
</body>


</html>
