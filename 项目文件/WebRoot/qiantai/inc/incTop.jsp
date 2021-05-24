<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style type="text/css">
        .Header {CLEAR: both; DISPLAY: block; FLOAT: left; BACKGROUND-IMAGE: url(<%=path %>/img/reservation01.jpg); WIDTH: 972px; POSITION: relative; HEIGHT: 154px}
        .Header .HeaderTop {HEIGHT: 60px}
    </style>
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function liuyanAll(){
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            
            <s:else>
			     var url="<%=path %>/liuyanAll.action";
			     window.open(url,"_blank");
            </s:else>
        }
        function userzhongxin(){
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            
            <s:else>
			     window.location.href="<%=path %>/qiantai/userinfo/userzhongxin.jsp";
            </s:else>
        }
        
        function myXinxi(){
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            
            <s:else>
                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
                var n="";
                var w="480px";
                var h="500px";
                var s="resizable:no;help:no;status:no;scroll:yes";
			    openWin(url,n,w,h,s);
            </s:else>
        }
        
	        function reg()
	        {
	                var url="<%=path %>/qiantai/userinfo/userReg.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
				    
	        }
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("请输入用户名");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           document.userLogin.submit();
	        }        
    </script>
  </head>
  
  <body>
	 <div align="center" class="Wrapper">
		 <div class="Header">
				<div class="HeaderTop">
				    <br/>
				    <font size="22px;"></font>
				</div>
				<div id="Menu" class="Menu">
					<div id="fstMenu" class="fstMenu"><font size="22px;" color="white">二手交易网</font></div>
					<div class="secMenu">
						<span id="secMenu0" class="secMenu-center">
						     <a href="<%=path %>/qiantai/default.jsp">首页</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a href="#" onclick="liuyanAll()">留言板</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a href="#" onclick="myXinxi()">我的信息</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a href="#" onclick="reg()">会员注册</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a href="#" onclick="userzhongxin()">会员中心</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							 <a target="_blank" href="<%=path %>/login.jsp">进入后台</a>
						</span>
					</div>	
				</div>
		    </div>
		     <div class="secMenu">
							<SPAN style="font-size:150px color:yellow" >
							 	<marquee scrollAmount=3 width=100%>
										<span style="font-size:250px color:yellow"><img src="/ershou/img/jinggao.gif"/>提醒：请务必当面交易，严防上当，如出现交易双方出现法律问题，均与本站无关</span>
								</marquee>
							</SPAN>
						</div>
        </div>	
       
  </body>
</html>
