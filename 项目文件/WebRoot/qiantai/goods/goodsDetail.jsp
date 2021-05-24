<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="<%=path %>/js/popup.js" type="text/javascript"></script>
    <script language="javascript">

        function maizhexinxin(userId)
        {
           var url="<%=path %>/userXinxi.action?userId="+userId;
           var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:350});
           pop.setContent("contentUrl",url);
           pop.setContent("title","卖家信息");
           pop.build();
           pop.show();
        }
        
        
    </script>
  </head>
  
  <body>
<!--body-->
<div align="center" class="Wrapper">

		
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">商品详情</div>
					</div>
					<div class="Slot">
						<table width="100%" border="0">
						    <tr>
						       <td align="center"><img width="200" height="200" src="<%=path %>/<s:property value="#request.good.fujian"/>"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center"><s:property value="#request.good.goodsName"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center"><s:property value="#request.good.goodsMiaoshu" escape="false"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center">￥：<s:property value="#request.good.goodsDijia"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center">
                                   <input type="button" value="查看卖家信息" onclick="maizhexinxin(<s:property value="#request.good.goodsUserId"/>)"/>
                                   
                               </td>
						    </tr>
						</table>
                    </div>
				</div>
		 </div>
</div>
<!--body-->
</body>
</html>
