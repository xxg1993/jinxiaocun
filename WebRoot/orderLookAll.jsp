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
     �鿴����ԤԼ�Ŀͻ���¼
     <table align="center">
     	<tr>
     		<td>�ͻ�ID</td>
     		<td>�ͻ�����</td>
     		<td>��ϵ��ʽ</td>
     		<td>��������</td>
     		<td>ԤԼʱ��</td>
     		<td>ɾ��</td>
     	</tr>
     	
     	 <c:forEach items="${list }" var="list">
       			 	<tr>
       			 		<td>${list.id}</td>
       			 		<td>${list.name }</td>
       			 		<td>${list.phone }</td>
       			 		<td>${list.work }</td>
       			 		<td>${list.year }��${list.month }��${list.day }��${list.hour }��${list.minute }��</td>
       			 		<td><a href="OrderAction?method=deleteorder&id=${list.id}&work=${list.work }&name=${list.name }&year=${list.year }&month=${list.month }&day=${list.day }&hour=${list.hour }&minute=${list.minute }&phone=${list.phone }">ɾ��</a></td>
       			 	</tr>
       			 
       	 		 </c:forEach>  
     	</table>
  </body>
</html>
