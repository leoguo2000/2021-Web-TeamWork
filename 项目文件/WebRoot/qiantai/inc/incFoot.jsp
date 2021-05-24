<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'daohang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
     <div class="FooterContainer ">
			<ul>
				<li>
					<a href="">网站声明</a>&nbsp;&nbsp; |&nbsp;&nbsp;
					<a href="">服务网点</a>&nbsp;&nbsp; |&nbsp;
					<a href="">网站地图</a>&nbsp; |&nbsp;&nbsp;
					<a href="">联系我们</a>&nbsp;&nbsp; |&nbsp;&nbsp;
					<a href=""">客服热线：********</a> 
				</li>
				
			</ul>
	</div>
  </body>
</html>
