<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加新的管理员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body align="center">
   您好：<%=session.getAttribute("status") %>|<a href="adminview.jsp">返回管理员界面</a>
    <br><br><hr>
    
    <form action="AdminAction?method=addadmin" method="post">
    	<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
    	    <tr>
    	        <td colspan=2 align="center"><font color="green" size=4><b>添加新管理员</b></font></td>
    	    </tr>
    	    <tr>
    	        <td align="center"><font color="green" size=4><b>新管理员名字</b></font></td><td><input type="text" name="name" size="20"></td>
    		</tr>
    		<tr>
    			<td align="center"><font color="green" size=4><b>新管理员密码</b></font><td><input type="text" name="password" size="20"></td>
    		</tr>
    		<tr>
    			<td colspan=2 align="center"><input type="submit" value="提交"><input type="reset" value="重填"></td>
    		</tr>
    	</table>
    
    </form>
  </body>
</html>
