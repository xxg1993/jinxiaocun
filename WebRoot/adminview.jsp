<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminview.jsp' starting page</title>
    
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
  	您好：<%=session.getAttribute("admintruename") %>| <%=session.getAttribute("status") %>
  	
  	|<a href="AdminAction?method=adminexit" target="_parent" >退出</a>|
  			
     <br><hr>
 <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
   <style type="text/css"> 
　  　 a:link { text-decoration: none;color: rgb(23,106,219)} 
　　   a:active { text-decoration:blink} 
　  　 a:hover { text-decoration:underline;color:rgb(23,106,219) }  
　  　 a:visited { text-decoration: none;color: red} 
   </style>
   <tr>
     <td align="center"><a href="operateview.jsp"><font color=green><b>操作员权限</b></font></a></td>
     <td align="center"><a href="serverview.jsp"><font color=green><b>售后员权限</b></font></a></td>
   </tr>
   <tr>
     <td align="center"><a href="addoperate.jsp"><font color=green><b>添加操作员</b></font></a></td>
     <td align="center"><a href="addserver.jsp"><font color=green><b>添加售后员</b></font></a></td>
   </tr>
   <tr>
     <td align="center"><a href="AdminAction?method=lookalloperate"><font color=green><b>查看所有操作员</b></font></a></td>
     <td align="center"><a href="AdminAction?method=lookallserver"><font color=green><b>查看所有售后员</b></font></a></td>
   </tr>
    <tr>
     <td rowspan=3 align="center" width=50%><a href="financialview.jsp"><font color=green><b>财务员权限（no）</b></font></a></td>
     <td align="center"><a href="addadmin.jsp"><font color=green><b>添加管理员</b></font></a></td>
     </tr>
   <tr>
     <td align="center"><a href="AdminAction?method=lookalladmin"><font color=green><b>查看所有管理员</b></font></a></td>
     </tr>
   <tr>
     <td align="center"><a href="AdminAction?method=skipmodifyadmin"><font color=green><b>修改个人信息</b></font></a></td>
   </tr>
    </table> 
  </body>
</html>
