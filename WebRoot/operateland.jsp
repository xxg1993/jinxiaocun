<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����Ա��¼����</title>
    
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
  <br><br><br><br><br>
     <form action="OperateAction?method=operatelogin" method="post" name="form1">
     <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
     <tr><td align="center" colspan="2"><font color="green" size=5><b>����Ա��¼</b></font></td>
     </tr>
     <tr>
     	<td>����Ա����</td><td><input type="text" name="name" size="20" maxlength="20">
     	</td></tr>
     	<tr>
     	<td>����Ա����</td><td><input type="text" name="password" size="20" maxlength="20"></td>
     	</tr>
     	<tr>
     	<td colspan="2" align="center"><input type="submit" value="��¼">
     	<input type="reset" value="����"></td>
     	</tr>
     	</table>
     </form>  
  </body>
</html>