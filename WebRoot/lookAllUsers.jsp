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
    <table width=100% >
   		<style type="text/css"> 
　  　 a:link { text-decoration: none;color: rgb(23,106,219)} 
　　   a:active { text-decoration:blink} 
　  　 a:hover { text-decoration:underline;color:rgb(23,106,219)}  
　  　 a:visited { text-decoration: none;color: red } 
        </style>
    			<tr>
    				<td align="right">
    			    <a href="OperateAction?method=returnindex"><font  color=green>   
    			    <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
    				     |返回首页</font></a>
    			    </td>
    			</tr>
     </table>
      <table border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      <tr>
      <td align="center" colspan=8><font size=5 color=green><b>客户列表</b></font>
   		<tr>
     		<td width="3%" align="center" class="inputHeader"><a href="OperateAction?method=lookAllUsers">客户编号</a></td>
     		<td width="8%" align="center" class="inputHeader"><a href="OperateAction?method=LookAllUserOrderByName">客户姓名</a></td>
    		 <td width="3%" align="center" class="inputHeader">客户性别</td>
     		<td width="8%" align="center" class="inputHeader">本人联系方式</td>
     		<td width="8%" align="center" class="inputHeader">家长联系方式</td>
     		<td width="8%" align="center" class="inputHeader">录入/修改配镜信息</td>
    		 <td width="8%" align="center" class="inputContent">录入/修改检查信息</td>
    		 <td width="8%" align="center" class="inputContent">删除记录</td>
        </tr>
        
        <c:forEach items="${list}" var="list">
        <tr>
        	<td width="3%" align="center" class="inputHeader">${list.id}</td>
     		<td width="8%" align="center" class="inputHeader"><a href="OperateAction?method=getoneuser&id=${list.id}" >${list.name }</a></td>
    		<td width="3%" align="center" class="inputHeader">${list.sex }</td>
     		<td width="8%" align="center" class="inputHeader">${list.phone }</td>
     		<td width="8%" align="center" class="inputHeader">${list.jzphone }</td>
     		<td width="8%" align="center" class="inputContent"><a href="OperateAction?method=modifypeijingxinxi&id=${list.id}" >录入/修改配镜信息</a>
       		<td width="8%" align="center" class="inputContent"><a href="OperateAction?method=modifyCheckUser&id=${list.id}" >录入/修改检查信息</a>
    		<td width="8%" align="center" class="inputContent"><a href="OperateAction?method=deleteUser&id=${list.id}" onClick="window.confirm('确定删除？')">删除</a></td>
        </tr>
        </c:forEach>
    </table>
  </body>
</html>
