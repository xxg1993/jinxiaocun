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
  
  <body>
    您好：<%=session.getAttribute("status") %>|<a href="adminview.jsp">返回管理员界面</a>
    <br><br><hr>
    现有列表：<br>
    <table width="100%" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      <tr>
    	<td>操作员名字</td>
    	<td>操作员密码</td>
    	<td>修改操作员信息</td>
    	<td>删除操作员</td>
     </tr>
     
     <c:forEach items="${list}" var="list" >
     	<tr> 
     		<td>${list.name}</td>
     		<td>${list.password }</td>
     		<td><a href="AdminAction?method=skipmodifyoperate&name=${list.name }">修改操作员信息</a></td>
    		<td><a href="AdminAction?method=executeoperate&name=${list.name }">删除操作员</a></td>
     	</tr>
     
     </c:forEach>
    </table>
     	
    	
    
  </body>
</html>
