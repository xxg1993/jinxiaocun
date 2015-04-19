<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderAddUse.jsp' starting page</title>
    
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
     <iframe src="topAll.jsp" width="100%" height="60" frameborder="no"></iframe>
  已注册的用户
        <table width="100%">
           		<tr>
        			<td>用户id</td>
        			<td>姓名</td>
        			<td>联系方式</td>
        			<td>联系方式（家长）</td>
        			<td>预约</td>
        		</tr>
       			 <c:forEach items="${list }" var="list">
       			 	<tr>
       			 		<td>${list.id }</td>
       			 		<td>${list.name }</td>
       			 		<td>${list.phone }</td>
       			 		<td>${list.jzphone }</td>
       			 		<td><a href="OrderAction?method=TZaddOrderTimeY&id=${list.id }">预约</a></td>
       			 	</tr>
       			 
       	 		 </c:forEach>  
       	 </table>
  </body>
</html>
