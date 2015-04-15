<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'serverview.jsp' starting page</title>
    
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
    					out.println("<a href=\"adminview.jsp\">返回管理员界面</a>|");
    					out.println("<a href=\"serverview.jsp\"> 进入售后员权限</a>");
    					
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("servername")); 
    				   		out.println("|<a href=\"ServerAction?method=returnindex\">返回首页</a>|");
    				   		out.println("<a href=\"ServerAction?method=updateserver\">修改个人信息</a>|");
    				   		out.println("<a href=\"ServerAction?method=operateexit\" >退出</a>|"); 
    				   		 
    				   }
    				     %>   				        				      				  
    <br><br><hr>
    
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
<style type="text/css"> 
　  　 a:link { text-decoration: none;color: rgb(23,106,219)} 
　　   a:active { text-decoration:blink} 
　  　 a:hover { text-decoration:underline;color:rgb(23,106,219) }  
　  　 a:visited { text-decoration: none;color: red} 
   </style>
    <tr>
        <td align="center"><a href="ServerAction?method=serverLookAllUser"><font color=green><b>所有客户</b></font></a></td>
    </tr>
    <tr>
        <td align="center"><a href="ServerAction?method=serverLookYesUser"><font color=green><b>已随访客户记录</b></font></a></td>
    </tr>
    <tr>
        <td align="center"><a href="ServerAction?method=serverLookNoUser"><font color=green><b>未随访客户记录</b></font></a></td>
    </tr>
</table>
  </body>
</html>
