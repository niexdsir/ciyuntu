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
	ResultSet rs = stmt.executeQuery("select * from t科技");
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

var word_array = [
	<%
	for(int k=0;k<10000;k++){
	%>
		{text:"<%=n[k]%>", weight: <%=m[k]%>,link: "https://baike.baidu.com/item/<%=n[k]%>",html: {title:"<%=m[k]%>" }},
		
	<%
	}
	%>
              ];
$(function() {undefined
    $("#example").jQCloud(word_array);
  });

</script>
</html>