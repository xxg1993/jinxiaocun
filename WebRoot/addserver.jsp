<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����µ��ۺ�Ա</title>
    
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
    					out.println("<a href=\"operateview.jsp\"> �������ԱȨ��</a>");
    					
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("operatetruename")); 
    				   		out.println("|<a href=\"OperateAction?method=returnindex\">������ҳ</a>|");
    				   		out.println("<a href=\"OperateAction?method=updateoperate\">�޸ĸ�����Ϣ</a>|");
    				   		out.println("<a href=\"OperateAction?method=operateexit\" >�˳�</a>|"); 
    				   		 
    				   }
    				     %>
    <br><br><hr>
    
    <form action="AdminAction?method=addserver" method="post">
    	<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
    	    <tr>
    	        <td colspan=2 align="center"><font color="green" size=4><b>������ۺ�Ա</b></font></td>
    	    </tr>
    		<tr>
    			<td align="center"><font color="green" size=4><b>���ۺ�Ա����</b></font></td><td><input type="text" name="name" size="20"></td>
    		</tr>
    		<tr>
    			<td align="center"><font color="green" size=4><b>���ۺ�Ա����</b></font></td><td><input type="text" name="password" size="20"></td>
    		</tr>
    		<tr>
    			<td colspan=2 align="center"><input type="submit" value="�ύ"><input type="reset" value="����"></td>
    		</tr>
    	</table>
    
    </form>
  </body>
</html>
