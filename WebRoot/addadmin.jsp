<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����µĹ���Ա</title>
    
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
   ���ã�<%=session.getAttribute("status") %>|<a href="adminview.jsp">���ع���Ա����</a>
    <br><br><hr>
    ����µĹ���Ա
    <form action="AdminAction?method=addadmin" method="post">
    	<table align="center">
    		<tr>
    			<td>�¹���Ա������</td>   <td><input type="text" name="name" size="20"></td>
    		</tr>
    		<tr>
    			<td>�¹���Ա������</td>   <td><input type="text" name="password" size="20"></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="�ύ"><input type="reset" value="����"></td>
    		</tr>
    	</table>
    
    </form>
  </body>
</html>
