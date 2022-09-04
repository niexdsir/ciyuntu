<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8");%>
    <%
    
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
            <base href="<%=basePath%>">
        <!--//    echarts CDN-->
        <!--//<script src='https://cdn.bootcss.com/echarts/3.7.0/echarts.simple.js'></script>-->
        <script src="${pageContext.request.contextPath}/plug-ins/js/echarts.js"></script>
        <!--//    下载wordcloud.js文件
        //    https://github.com/ecomfe/echarts-wordcloud-->
        <script src="${pageContext.request.contextPath}/plug-ins/js/echarts-wordcloud.js"></script>
        <script src="${pageContext.request.contextPath}/plug-ins/js/jquery-1.10.2.min.js"></script>
        
      
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>舔猫</title>
	<link rel="icon" type="text/css" href="./images/logo.ico">
	<link rel="stylesheet" href="styles/index-style.css">
	<link rel="stylesheet" href="styles/allset.css">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <link rel="stylesheet" href="styles/fontawesome-all.css">
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <style>
        
        
        table,td,th
{
	border:1px solid black;
}
table
{
	width:100%;
}
th
{
	height:50px;
}
            html, body{
                width: 100%;
                height: 100%;
                margin: 0;
            }
            #main{
                width: 600px;
                height: 500px;
                background: rgba(70, 120, 200, 0.2)
                float:right
            }
           p.pos_fixed
		{
				position:fixed;
				top:30px;
				right:5px;
		}
		.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button4 {

    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}





        	</style>
        	
        	
        	
        	<center>
<div class="content" >
		<div class="row" style="margin-top: 20px;">
            
			<div class="col-md-5">
				<img src="./images/title-logo.jpg" height="120" width="250">
			</div>         
        </div>
        </div>
        </center>
        
        
        
    
      		
			
		<div class="navbar navbar-inverse">
	<ul class="nav nav-pills navbar-nav">
            <li><a href="ciyun.jsp">检索</a></li>
        </ul>
         <form class="navbar-form navbar-right" action="NewFile1.jsp" method="post" >
         		
                
                <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="查询前~个热词" />
                </div>      
            
                <button type="submit"  class="btn btn-default">查询<tton>
            
            
        </form>
    </div>
<hr>
			
        </div >
        
        
        
        <div id='main' >
        <script>
        
        var chart = echarts.init(document.getElementById('main'));
		var postURL = "/lunwen/ShowServlet";
		var mydata = new Array();
		$.ajaxSettings.async = false;
		$.post(postURL, {}, function(rs) {
			var dataList = JSON.parse(rs);
			for (var i = 0; i < dataList.length; i++) {
				var d = {};
				d['name'] = dataList[i].name;
				d['value'] = dataList[i].value;
				mydata.push(d);
			}
		});
		$.ajaxSettings.async = true;
		var option = {
			tooltip : {},
			series : [ {
				type : 'wordCloud',
				gridSize : 2,
				sizeRange : [ 10, 30 ],
				rotationRange : [ -90, 90 ],
				shape : 'pentagon',
				width : 800,
				height : 600,
				drawOutOfBound : false,
				textStyle : {
					normal : {
						color : function() {
							return 'rgb('
									+ [ Math.round(Math.random() * 160),
											Math.round(Math.random() * 160),
											Math.round(Math.random() * 160) ]
											.join(',') + ')';
						}
					},
					emphasis : {
						shadowBlur : 10,
						shadowColor : '#333'
					}
				},
				data : mydata
			} ]
		};
 		chart.setOption(option);
		chart.on('click', function(params) {
			var url = "ClickServlet?name=" + params.name;
			window.location.href = url;
		});           
        </script>
        
        <table class="table table-bordered table-hover" >
			<tr>
				<td>热词</td>
				<td>出现次数</td>			
			</tr>
			<tr>
			<td>via</td>
				<td>220</td>
			<tr>	
			<tr>
			<td>Images</td>
				<td>180</td>
			<tr>
				
			<tr>
			<td>Towards</td>
				<td>150</td>
			<tr>
			<tr>
			<td>Space</td>
				<td>130</td>
			<tr>
			<tr>
			<td>Method</td>
				<td>110</td>
			<tr>
			<tr>
			<td>Cooling</td>
				<td>98</td>
			<tr>
			
		</table>
        
        
        
    </body>
</html>