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
    <table width="100%" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      <tr>
    	<td>����Ա����</td>
    	<td>����Ա����</td>
    	<td>�޸Ĳ���Ա��Ϣ</td>
    	<td>ɾ������Ա</td>
     </tr>
     
     <c:forEach items="${list}" var="list" >
     	<tr> 
     		<td>${list.name}</td>
     		<td>${list.password }</td>
     		<td><a href="AdminAction?method=skipmodifyoperate&name=${list.name }">�޸Ĳ���Ա��Ϣ</a></td>
    		<td><a href="AdminAction?method=executeoperate&name=${list.name }">ɾ������Ա</a></td>
     	</tr>
     
     </c:forEach>
    </table>
     	
    	
    
  </body>
</html>
