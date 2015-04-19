<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
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
    您好：<% if (session.getAttribute("status").equals("admin"))
    				{
    					out.println(session.getAttribute("status")); 
    					out.println("<a href=\"adminview.jsp\"  target=\"_parent\">返回管理员界面</a>|");
    					out.println("<a href=\"operateview.jsp\" target=\"_parent\"> 进入操作员权限</a>|");
    					out.println("<a href=\"AdminAction?method=adminexit\" target=\"_parent\" >退出</a>|");
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("operatetruename")); 
    				   		out.println("|<a href=\"OperateAction?method=returnindex\" target=\"_parent\">返回首页</a>|");
    				   		out.println("<a href=\"OperateAction?method=updateoperate\" target=\"_parent\">修改个人信息</a>|");
    				  // 		out.println("<a href=\"OperateAction?method=operateexit\"  target=\"_parent\">退出</a>|");
    				  		out.println("<a href=\"orderDeleteDay.jsp\"  target=\"_parent\">退出</a>|"); 
    				   		 
    				   }
    				     %>
  </body>
</html>
