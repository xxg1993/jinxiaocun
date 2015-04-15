<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>操作员页面</title>
    
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
   	<table width=100% >
   		
    			<tr>
    				<td>您好：
    				<% if (session.getAttribute("status").equals("admin"))
    				{
    					out.println(session.getAttribute("status")); 
    					out.println("<a href=\"adminview.jsp\">返回管理员界面</a>|");
    					out.println("<a href=\"serverview.jsp\"> 进入售后员权限</a>");
    					
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("operatetruename")); 
    				   		out.println("|<a href=\"OperateAction?method=returnindex\">返回首页</a>|");
    				   		out.println("<a href=\"OperateAction?method=updateoperate\">修改个人信息</a>|");
    				   		out.println("<a href=\"OperateAction?method=operateexit\" >退出</a>|"); 
    				   		 
    				   }
    				     %>
 
    			   
    			    </td>
    			</tr>
    			
    		</table>
    	<br><br><br>
    	
   <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
     <style type="text/css"> 
　  　  a:link { text-decoration: none;color: rgb(23,106,219)} 
　　    a:active { text-decoration:blink} 
　  　  a:hover { text-decoration:underline;color:rgb(23,106,219) }  
　  　  a:visited { text-decoration: none;color: red} 
     </style>
    	<tr>
    	  <td align="center"><a href="OperateAction?method=lookAllUsers"><font color=green><b>所有客户</b></font></a></td>
    	</tr>
    	<tr>
    	  <td align="center"><a href="InputUserInformation.jsp"><font color=green><b>添加客户</b></font></a></td>
        </tr>
        <tr>    	
    	  <td align="center"><a href="LookUserInf.jsp"><font color=green><b>查看单个客户信息</b></font></a></td>
    	</tr>
   </table>	
  </body>
</html>
