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
    
    <title>My JSP 'lookAllUsers.jsp' starting page</title>
    
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
   <table width="100%" border="1" cellpadding="1" cellspacing="1">
   	<tr>
   		现有用户列表
   	</tr>
   </table>
   
   <table border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      <tr>
      <td align="center" colspan=8><font size=5 color=green><b>已随访客户列表</b></font>
   		<tr>
     		<td width="3%" align="center" class="inputHeader">客户编号</td>
     		<td width="8%" align="center" class="inputHeader">客户姓名</td>
    		 <td width="8%" align="center" class="inputHeader">客户性别</td>
     		<td width="8%" align="center" class="inputHeader">本人联系方式</td>
     		<td width="8%" align="center" class="inputHeader">家长联系方式</td>
     		<td width="8%" align="center" class="inputHeader">联系地址</td>
    		 
    		 <td width="8%" align="center" class="inputContent">添加/修改随访记录</td>
    		 <td width="8%" align="center" class="inputContent">删除记录</td>
        </tr>
        
        <c:forEach items="${list}" var="list">
        <tr>
        	<td width="3%" align="center" class="inputHeader">${list.id}</td>
     		<td width="8%" align="center" class="inputHeader"><a href="ServerAction?method=getoneuser&id=${list.id}" >${list.name }</td>
    		 <td width="8%" align="center" class="inputHeader">${list.sex }</td>
     		<td width="8%" align="center" class="inputHeader">${list.phone }</td>
     		<td width="8%" align="center" class="inputHeader">${list.jzphone }</td>
     		<td width="8%" align="center" class="inputContent">${list.adress}</td>
       	
       		 <td width="8%" align="center" class="inputContent"><a href="ServerAction?method=TZinsertInf&id=${list.id}">添加/修改</td>
    		 <td width="8%" align="center" class="inputContent"><a href="ServerAction?method=deleteUser&id=${list.id}" onClick="window.confirm('确定删除？')">删除</td>
        </tr>
        </c:forEach>
    </table>
  </body>
</html>
