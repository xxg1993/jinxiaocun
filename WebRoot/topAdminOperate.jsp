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
    ���ã�<% if (session.getAttribute("status").equals("admin"))
    				{
    					out.println(session.getAttribute("status")); 
    					out.println("<a href=\"adminview.jsp\"  target=\"_parent\">���ع���Ա����</a>|");
    					out.println("<a href=\"operateview.jsp\" target=\"_parent\"> �������ԱȨ��</a>|");
    					out.println("<a href=\"AdminAction?method=adminexit\" target=\"_parent\" >�˳�</a>|");
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("operatetruename")); 
    				   		out.println("|<a href=\"OperateAction?method=returnindex\" target=\"_parent\">������ҳ</a>|");
    				   		out.println("<a href=\"OperateAction?method=updateoperate\" target=\"_parent\">�޸ĸ�����Ϣ</a>|");
    				  // 		out.println("<a href=\"OperateAction?method=operateexit\"  target=\"_parent\">�˳�</a>|");
    				  		out.println("<a href=\"orderDeleteDay.jsp\"  target=\"_parent\">�˳�</a>|"); 
    				   		 
    				   }
    				     %>
  </body>
</html>
