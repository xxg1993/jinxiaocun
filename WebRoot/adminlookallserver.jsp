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
    ���ã�<%=session.getAttribute("status") %>|<a href="adminview.jsp">���ع���Ա����</a>
    <br><br><hr>
    �����б�<br>
    <table width="100%" border="1" cellpadding="1" cellspacing="1">
      <tr>
    	<td>�ۺ�Ա����</td>
    	<td>�ۺ�Ա����</td>
    	<td>�޸��ۺ�Ա��Ϣ</td>
    	<td>ɾ���ۺ�Ա</td>
     </tr>
     
     <c:forEach items="${list}" var="list" >
     	<tr> 
     		<td>${list.name}</td>
     		<td>${list.password }</td>
     		<td><a href="AdminAction?method=skipmodifyserver&name=${list.name }">�޸��ۺ�Ա��Ϣ</a></td>
    		<td><a href="AdminAction?method=executeserver&name=${list.name }">ɾ���ۺ�Ա</td>
     	</tr>
     
     </c:forEach>
    </table>
     	
    	
    
  </body>
</html>
