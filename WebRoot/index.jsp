<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <table  align="center" border="5" 
          cellpadding="20" cellspacing="26" 
          bordercolor="3399FF" bgcolor=rgb(222,234,253)>
  <style type="text/css"> 
　　 <!-- 
    /*body { background-image: url(D:/photo/1366170845173.jpg);
    background-repeat=no-repeat;
    background-size=1368px 768px;}**/
　　 a:link { text-decoration: none;color: rgb(23,106,219)} 
　　 a:active { text-decoration:blink} 
　　 a:hover { text-decoration:underline;color: red}  
　　 a:visited { text-decoration: none;color: rgb(23,106,219)} 
table{filter: Alpha(Opacity=70);}
　　 -－>  
　　 </style>
<tr>
<br><br><br><br><br><br>
</tr>
    <tr>
    <td align="center"><a href="adminland.jsp" >管理员登陆</a></td>
    <td align="center"><a href="operateland.jsp">操作员登陆</a></td></tr>
    <tr>
    <td align="center"><a href="financialland.jsp" >财务员登陆</a></td>
    <td align="center"><a href="servicerland.jsp">售后员登陆</a></td></tr>
    </table>
  </body>
</html>
