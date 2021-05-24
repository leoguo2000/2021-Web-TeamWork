<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function goodsDetailHou(goodsId)
           {
                 var url="<%=path %>/goodsDetailHou.action?goodsId="+goodsId;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           
           function goodsDelByMe(goodsId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/goodsDelByMe.action?goodsId="+goodsId;
               }
           }
           
           function goodsAddByMe()
           {
                 var url="<%=path %>/auser/goods/goodsAddByMe.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           
           function shouchangxinxi(jingpaiGoodsId)
           {
               window.location.href="<%=path %>/jingpaikan.action?jingpaiGoodsId="+jingpaiGoodsId;
           }
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }		
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/images/tbg.gif">&nbsp;发布商品管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="6%">ID</td>
					<td width="12%">商品名称</td>
					<td width="14%">商品描述</td>
					<td width="12%">商品图片</td>
					<td width="12%">价格</td>
					<td width="12%">发布时间</td>
					<td width="18%">操作</td>
		        </tr>	
				<s:iterator value="#request.goodsList" id="goods">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#goods.goodsId"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#goods.goodsName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <a href="#" onclick="goodsDetailHou(<s:property value="#goods.goodsId"/>)" class="pn-loperator">详细介绍</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <div onmouseover = "over('<%=path %>/<s:property value="#goods.fujian"/>')" onmouseout = "out()" style="cursor:hand;">
							图片
					   </div>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#goods.goodsDijia"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#goods.goodsShijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center" >
						<a href="#" style="color:red" onclick="goodsDelByMe(<s:property value="#goods.goodsId"/>)" class="pn-loperator">删除</a>
						&nbsp;&nbsp;&nbsp;
						<a href="#"  style="color:red" onclick="shouchangxinxi(<s:property value="#goods.goodsId"/>)" class="pn-loperator">查看被收藏情况</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			        <input type="button" value="添加" style="width: 80px;" onclick="goodsAddByMe()" />
			    </td>
			  </tr>
		    </table>
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="80" width="80"></TD>
				</TR>
			</TABLE>
		    </div>
	</body>
</html>
