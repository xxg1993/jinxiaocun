<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>¼���û���Ϣ</title>
    
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
    <table width=100% >
   		<style type="text/css"> 
��  �� a:link { text-decoration: none;color: rgb(23,106,219)} 
����   a:active { text-decoration:blink} 
��  �� a:hover { text-decoration:underline;color:rgb(23,106,219)}  
��  �� a:visited { text-decoration: none;color: red } 
        </style>
    			<tr>
    				<td align="right">
    			    <a href="OperateAction?method=returnindex"><font  color=green>������ҳ</font></a>
    			    </td>
    			</tr>
    </table>

    <br><br><hr>
    	<form action="OperateAction?method=updateUser" method="post" name="form1">
    	   <table width=45% align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
    	   <tr>
    	   <td align="center" colspan=2><font color="green" size=5><b>��������</b></font></td>
    	   </tr>
    	     <tr>
				<td width=20% align="center">����</td>
				<td><input type="text" name="name" size="10" maxlength="10" style="width: 180px; "></td>
			 </tr>
			 <tr>
				<td  align="center">�Ա�</td>
				<td><select name="sex">
							<option value="ѡ��">-ѡ��-</option>
							<option>��</option>
							<option>Ů</option>
						</select>
				</td>
			 </tr>
			 <tr>
				<td  align="center">��������</td>
				<td><input type="text" name="year" size="4" maxlength="4">��
							  <input type="text" name="month" size="4" maxlength="4">��
							  <input type="text" name="day" size="4" maxlength="4">��
				</td>
			 </tr>
			 
			 <tr>
			 	<td  align="center">��ϵ��ʽ���ֻ���</td>
				<td>�ҳ�����<input type="text" name="phone" size="20" maxlength="20">
				             ���˺���<input type="text" name="phone" size="20" maxlength="20"></td>
			 </tr>
			 
			 <tr>
			 	<td  align="center">��λ��ѧ����дѧУ��</td>
				<td  align="left"><input type="text" name="company" size="20" maxlength="100" style="width: 400px; "></td>
			 </tr>
			 <tr>
			 	<td align="center">��ַ</td>
				<td><textarea rows="3" cols="60" name="adress"></textarea></td>
			 </tr>
			 <tr>
			 	<td align="center" colspan=2><input type="submit" value="�ύ">
			 	<input type="reset" value="����"></td>
			 </tr>
		</table>
	</form>
  </body>
</html>
