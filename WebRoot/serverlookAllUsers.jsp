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
         ���ã�<% if (session.getAttribute("status").equals("admin"))
    				{
    					out.println(session.getAttribute("status")); 
    					out.println("<a href=\"adminview.jsp\">���ع���Ա����</a>|");
    					out.println("<a href=\"serverview.jsp\"> �����ۺ�ԱȨ��</a>");
    					
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("servername")); 
    				   		out.println("|<a href=\"ServerAction?method=returnindex\">������ҳ</a>|");
    				   		out.println("<a href=\"ServerAction?method=updateserver\">�޸ĸ�����Ϣ</a>|");
    				   		out.println("<a href=\"ServerAction?method=operateexit\" >�˳�</a>|"); 
    				   		 
    				   }
    				     %>   				        				      				  
    <br><br><hr>
   <table width="100%" border="1" cellpadding="1" cellspacing="1">
   	<tr>
   		�����û��б�
   	</tr>
   </table>
   
   <table border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      <tr>
      <td align="center" colspan=8><font size=5 color=green><b>����ÿͻ��б�</b></font>
   		<tr>
     		<td width="3%" align="center" class="inputHeader">�ͻ����</td>
     		<td width="8%" align="center" class="inputHeader">�ͻ�����</td>
    		 <td width="8%" align="center" class="inputHeader">�ͻ��Ա�</td>
     		<td width="8%" align="center" class="inputHeader">������ϵ��ʽ</td>
     		<td width="8%" align="center" class="inputHeader">�ҳ���ϵ��ʽ</td>
     		<td width="8%" align="center" class="inputHeader">��ϵ��ַ</td>
    		 
    		 <td width="8%" align="center" class="inputContent">���/�޸���ü�¼</td>
    		 <td width="8%" align="center" class="inputContent">ɾ����¼</td>
        </tr>
        
        <c:forEach items="${list}" var="list">
        <tr>
        	<td width="3%" align="center" class="inputHeader">${list.id}</td>
     		<td width="8%" align="center" class="inputHeader"><a href="ServerAction?method=getoneuser&id=${list.id}" >${list.name }</td>
    		 <td width="8%" align="center" class="inputHeader">${list.sex }</td>
     		<td width="8%" align="center" class="inputHeader">${list.phone }</td>
     		<td width="8%" align="center" class="inputHeader">${list.jzphone }</td>
     		<td width="8%" align="center" class="inputContent">${list.adress}</td>
       	
       		 <td width="8%" align="center" class="inputContent"><a href="ServerAction?method=TZinsertInf&id=${list.id}">���/�޸�</td>
    		 <td width="8%" align="center" class="inputContent"><a href="ServerAction?method=deleteUser&id=${list.id}" onClick="window.confirm('ȷ��ɾ����')">ɾ��</td>
        </tr>
        </c:forEach>
    </table>
  </body>
</html>
