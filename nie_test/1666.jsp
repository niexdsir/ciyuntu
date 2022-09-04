<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jqcloud-1.0.4.js"></script>
<link rel="stylesheet" type="text/css" href="css/jqcloud.css"/>
</head>
<body>
         <div id="example" style="width: 1000px; height: 800px;"></div>
                <%
String m[]=new String[10000];
String n[]=new String[10000];
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf-8", "root", "123456");
	//使用Statement对象
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from news_counts");
	int i=0;
	while (rs.next()) {
		m[i]=rs.getString(2);
		n[i]=rs.getString(1);
	
		i++;
	}
	rs.close();
	stmt.close();
	con.close();
} catch (Exception e) {
	out.println("Exception:" + e.getMessage());
}
%>	
           
</body>
<script type="text/javascript">
var lin = "http://www.360.com";
var m="nihao"
var word_array = [
                  {text: "asd", weight: 15,html: {title: "25"}}, //title 提示
                  {text: "百度", weight: 9, link: "http://www.baidu.com/"},
                  {text: "搜狗", weight: 6, link: "http://www.sougou.com/"},
                  {text: "360", weight: 7,link:lin}
              ];
$(function() {undefined
    $("#example").jQCloud(word_array);
  });

</script>
</html>