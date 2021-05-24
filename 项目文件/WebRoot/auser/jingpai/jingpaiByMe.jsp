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

		<link rel="stylesheet" type="text/css" href="<%=path%>/css/base.css" />

		<script language="javascript">
       </script>
	</head>

	<body leftmargin="2" topmargin="2"
		background='<%=path%>/images/allbg.gif'>
		<table width="98%" border="0" cellpadding="2" cellspacing="1"
			bgcolor="#D1DDAA" align="center" style="margin-top: 8px">
			<tr bgcolor="#E7E7E7">
				<td height="14" colspan="4" background="<%=path%>/images/tbg.gif">
					&nbsp;我的收藏
				</td>
			</tr>
			<tr align="center" bgcolor="#FAFAF1" height="22">
				<td width="50%">
					时间
				</td>

				<td width="50%">
					收藏商品(点击可以查看商品详情)
				</td>
			</tr>
			<s:iterator value="#request.jingpaiList" id="jingpai">
				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td width="50%" bgcolor="#FFFFFF" align="center">
						<s:property value="#jingpai.jingpaiShijian" />
					</td>

					<td width="50%" bgcolor="#FFFFFF" align="center">
						<a  href="<%=path%>/goodsDetail.action?goodsId=<s:property value="#jingpai.jingpaiGoodsId"/>">
							<span style="color: red">
								<s:property value="#jingpai.jingpaiGoodsName" />
							</span>
						</a>
					</td>
				</tr>
			</s:iterator>
		</table>
	</body>
</html>
