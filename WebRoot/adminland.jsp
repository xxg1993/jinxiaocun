<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <br><br><br>
     <form action="AdminAction?method=adminlogin" method="post" name="form1">
     <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
     <tr><td align="center" colspan="2"><font color="green" size=5><b>管理员登录</b></font></td>
     </tr>
     <tr>
     	<td>管理员名字</td><td><input type="text" name="adminname" size="20" maxlength="20">
     	</td></tr>
     	<tr>
     	<td>管理员密码</td><td><input type="text" name="adminpassword" size="20" maxlength="20"></td>
     	</tr>
     	<tr>
     	<td colspan="2" align="center"><input type="submit" value="登录">
     	<input type="reset" value="重填"></td>
     	</tr>
     	</table>
     </form>  
  </body>
</html>