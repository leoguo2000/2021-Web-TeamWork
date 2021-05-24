<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>二手商品交易系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
        body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;overflow:hidden;}
        .STYLE3 {font-size: 12px; color: #adc9d9; }
    </style>
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    <script language="javascript">
		 function denglu()
		 {                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		 }
		
		 function callback(data)
		 {
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		 }
		 
		 function chongzhi(){                                                                                 
		     document.getElementById("textfield").value="";
		     document.getElementById("textfield2").value="";
		 }		 
     </script>
  </head>
  
  <body>
		    <form name="ThisForm" method="POST" action="">
               <table width="990" border="0" cellspacing="0" cellpadding="0" align="center" height="680" background="images/login_zh.jpg">
               	    <tr>
	                  <td width="44" height="154" valign="bottom" colspan="4"></td>
	               </tr>
	               <tr>
	               		<td width="354" height="24" valign="bottom"></td>
	                  <td width="44" height="24" valign="bottom">用户:</td>
	                  <td height="24" colspan="2" valign="bottom">
	                    <input type="text" name="userName" id="textfield" style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; ">
	                  </td>
	                  <td width="324" height="24" valign="bottom"></td>
	               </tr>
	               <tr>
	               <td width="144" height="24" valign="bottom"></td>
	                <td height="24" valign="bottom">密码:</td>
	                <td height="24" colspan="2" valign="bottom"><input type="password" name="userPw" id="textfield2" style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; "></td>
	               <td width="144" height="24" valign="bottom"><img id="indicator" src="<%=path %>/images/loading.gif" style="display:none"/></td>
	               </tr>
	              <tr>
	              <td width="144" height="24" valign="bottom"></td>
	               <td height="25"><img src="images/dl.gif" width="57" height="20" onclick="denglu()"></td>
	               <td height="25"><img src="images/cz.gif" width="57" height="20" onclick="chongzhi()"></td>
	             <td width="144" height="24" valign="bottom"></td>
	             </tr>
	               <tr>
	                  <td width="44" height="114" valign="bottom" colspan="4"></td>
	               </tr>
              </table>
          </form>
  </body>
</html>
