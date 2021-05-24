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
        function shouchang(jingpaiGoodsId)
        {
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            
            <s:else>
               
			        var url="<%=path %>/jingpaiAdd.action?&jingpaiGoodsId="+jingpaiGoodsId;
			        //alert(111111);
			        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:200});
		            pop.setContent("contentUrl",url);
		            pop.setContent("title","收藏");
		            pop.build();
		            pop.show();
			     
            </s:else>
        }
        
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
<!-- head如果图片高度不合适。请修改Common.ces里面的".Header .HeaderTop"的高度。和".Header"的高度-->
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
<!-- head-->	
	
	
	
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="navigation" class="naivgation">
				<!-- 登录-->
				<div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">用户登陆</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
					</div>
				 </div>
				 <!-- 登录-->
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">商品搜索</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/goods/agoodSearch.jsp"></jsp:include>
					</div>
				 </div>
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">网站公告</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <s:action name="gonggaoQian5" executeResult="true"></s:action>
					</div>
				 </div>
				 <div class="SquarelyGreenContainer">
					<div class="top">
						<div class="bgbtop-center">
							<span><a href="">日历表</a></span>
							<div class="WinRight"></div>
						</div>
					</div>
					<div class="Slot">
					    <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					</div>
				 </div>
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">商品详情</div>
					</div>
					<div class="Slot">
						<table width="100%" border="0">
						    <tr>
						       <td align="center"><img width="200" height="200" src="<%=path %>/<s:property value="#request.goods.fujian"/>"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center"><s:property value="#request.goods.goodsName"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center"><s:property value="#request.goods.goodsMiaoshu" escape="false"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center">￥：<s:property value="#request.goods.goodsDijia"/></td>
						    </tr>
						    <tr>
						       <td align="center"><hr/></td>
						    </tr>
						    <tr>
						       <td align="center">
                                  
                                   <input type="button" value="收藏" onclick="shouchang(<s:property value="#request.goods.goodsId"/>)"/>
                                   <input type="button" value="查看卖家信息" onclick="maizhexinxin(<s:property value="#request.goods.goodsUserId"/>)"/>
                                   
                               </td>
						    </tr>
						</table>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>
