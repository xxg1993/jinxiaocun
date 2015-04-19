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
    <table width="100%" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      <tr>
        <td align="center" colspan=4><font color=green size=5><b>售后员列表</b></font></td>
      </tr>
      <tr>
    	<td align="center">售后员名字</td>
    	<td align="center">售后员密码</td>
    	<td align="center">修改售后员信息</td>
    	<td align="center">删除售后员</td>
     </tr>
     
     <c:forEach items="${list}" var="list" >
     	<tr> 
     		<td align="center">${list.name}</td>
     		<td align="center">${list.password }</td>
     		<td align="center"><a href="AdminAction?method=skipmodifyserver&name=${list.name }">修改售后员信息</a></td>
    		<td align="center"><a href="AdminAction?method=executeserver&name=${list.name }">删除售后员</a></td>
     	</tr>
     
     </c:forEach>
    </table>
     	
    	
    
  </body>
</html>
