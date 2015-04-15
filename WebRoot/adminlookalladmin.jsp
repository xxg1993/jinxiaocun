<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookalloperate.jsp' starting page</title>
    
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
    现有管理员：<br>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
      <tr>
    	

     </tr>
     
     <c:forEach items="${list}" var="list" >
     	<tr> 
     		<td align="center">${list.name}</td>

     	</tr>
     
     </c:forEach>
    </table>
     	
    	
    
  </body>
</html>
