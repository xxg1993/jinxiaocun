<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminupdateoperate.jsp' starting page</title>
    
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
     ���ã�<%=session.getAttribute("admintruename") %>
    |<a href="AdminAction?method=returnindex">������ҳ</a>
    |<a href="OperateAction?method=operateexit" target="_parent" >�˳�</a>
    <br><br><hr>
   
   <form action="AdminAction?method=updateADxinxi" method="post">
    <table align="center">
    	<tr>
    		<td></td>
    		<td><input type="hidden" name="oldname" size="20" value="${map.name }"></td>
    	</tr>
    	<tr>
    		<td>����Ա���֣�</td><td><input type="text" name="newname" size="20" value="${map.name }"></td>
    	<tr>
    		<td>����Ա���룺</td><td><input type="text" name="password" size="20"></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td><input type="submit" value="�ύ">
    			<input type="reset" value="��д">
    		</td>
    	</tr>
    </table>
   </form>
  </body>
</html>
