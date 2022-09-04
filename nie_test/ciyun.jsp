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
            <li><a href="NewFile.jsp">热词</a></li>
        </ul>
         <form class="navbar-form navbar-right" action="ClickServlet" method="post" >
         		<div class="form-group">
              <input type="text"  class="form-control" id="keyword3"  name="keyword3" placeholder="请输入题目" />
                </div>
                
               <div class="form-group">
                    <input type="text" class="form-control" id="keyword2" name="keyword2" placeholder="请输入摘要" />
                </div>
                
                <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="请输入关键字" />
                </div>      
            
                <button type="submit"  class="btn btn-default">查询<tton>
            
            
        </form>
    </div>
<hr>
			
        </div >
        
        
        
        
        
       
        
        <div>
		<table class="table table-bordered table-hover">
			<tr>
				<th>论文名称</th>
				<th>关键词</th>
				<th>来源</th>
				<th>   </th>
			</tr>
			
			<tbody>
				<c:forEach items="${list2}" var="data" varStatus="vs">
					<tr>
						<td><a href="${data.link}">${data.title}</a></td>
						<td>${data.keyword}</td>
						<td>cvpr</td>
						<td><a href="DeleteServlet?name=${data.keyword}">删除 </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
        
    </body>
</html>