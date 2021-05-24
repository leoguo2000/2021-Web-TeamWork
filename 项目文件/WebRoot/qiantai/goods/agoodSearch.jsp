<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'agoodSearch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
      <form action="<%=path %>/goodSearch.action" id="" name="form1" method="post">
	        <table border="0">
	           <tr>
	               <td>
	                   商品名称：
	               </td>
	               <td align="left">
	                  <input type="text" name="goodsName" size="9"/>
	               </td>
	           </tr>
	           <tr>
	               <td>
	                   <input type="submit" value="查询"/>
	               </td>
	               <td align="left">
	                   <input type="reset" value="重置"/>
	               </td>
	           </tr>
	        </table>
	    </form>
  </body>
</html>
