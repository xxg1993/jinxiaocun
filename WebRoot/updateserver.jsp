<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateserver.jsp' starting page</title>
    
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
       <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
    <form action="ServerAction?method=updateserverNP" method="post">
       <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
      		 <tr>
       			<td align="center" colspan=2><font color=green size=4><b>�޸��ۺ�Ա<input type="hidden" name="oldname" size="10" value="${map.name } ">����Ϣ </b></font></td>
    		</tr>
       		<tr>
       			<td align="center">�ۺ�Ա����</td>
    
       			<td align="center"><input type="text" name="newname" size="10" value="${map.name } ">  </td>
    		</tr>
    		<tr>
       			<td align="center">������</td>
    
       			<td align="center"><input type="text" name="oldpassword" size="10" >  </td>
    		</tr>
    		<tr>
       			<td align="center">������</td>
    
       			<td align="center"><input type="text" name="newpassword" size="10" >  </td>
    		</tr>
    		<tr>
    			<td align="center"><input type="submit" value="�ύ"></td>
    			<td align="center"><input type="reset" value="����"></td>
    		</tr>
    		
    		
    	</table>
    
    </form>
  </body>
</html>
