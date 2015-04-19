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
    
    <title>My JSP 'orderLookAll.jsp' starting page</title>
    
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
     查看所有预约的客户记录
     <table align="center">
     	<tr>
     		<td>客户ID</td>
     		<td>客户名字</td>
     		<td>联系方式</td>
     		<td>办理事务</td>
     		<td>预约时间</td>
     		<td>删除</td>
     	</tr>
     	
     	 <c:forEach items="${list }" var="list">
       			 	<tr>
       			 		<td>${list.id}</td>
       			 		<td>${list.name }</td>
       			 		<td>${list.phone }</td>
       			 		<td>${list.work }</td>
       			 		<td>${list.year }年${list.month }月${list.day }日${list.hour }点${list.minute }分</td>
       			 		<td><a href="OrderAction?method=deleteorder&id=${list.id}&work=${list.work }&name=${list.name }&year=${list.year }&month=${list.month }&day=${list.day }&hour=${list.hour }&minute=${list.minute }&phone=${list.phone }">删除</a></td>
       			 	</tr>
       			 
       	 		 </c:forEach>  
     	</table>
  </body>
</html>
