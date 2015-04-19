<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>录入用户信息</title>
    
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
  <%
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date currentTime = new Date();
String date1 = formatter.format(currentTime); 
%>

     <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
    
    <table width="100%">
    	<form action="OperateAction?method=inputuserinformation" method="post" name="form1">
    	   <table width=45% align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
    	     
    	     <tr>
    	     <td align="center" colspan=2><font color=green size=5><b>录入用户信息</b></font>
	    	   <tr>
					<td align="center">当前时间</td>
					<td><input type="text" readonly="true" name="time"  value="<%=date1%>"></td>
				 </tr>   
	    	     
	    	     <tr>
					<td align="center">姓名</td>
					<td><input type="text" name="name" size="10" maxlength="10"></td>
				 </tr>
				
			 <tr>
				<td align="center">性别</td>
				<td><select name="sex">
							<option value="选择">-选择-</option>
							<option>男</option>
							<option>女</option>
						</select>
				</td>
			 </tr>
			 <tr>	
				<td align="center">出生年月日</td>
				<td><input type="text" name="year" size="4" maxlength="4">年
							  <input type="text" name="month" size="4" maxlength="4">月
							  <input type="text" name="day" size="4" maxlength="4">日
				</td>
			 </tr>
			 
			 <tr>
			 	<td align="center">联系方式（本人手机）</td>
				<td><input type="text" name="phone" size="20" maxlength="20"></td>
			 </tr>
			 
			  <tr>
			 	<td align="center">联系方式（家长手机）</td>
				<td><input type="text" name="jzphone" size="20" maxlength="20"></td>
			 </tr>
			 
			 <tr>
			 	<td align="center">单位（学生填写学校）</td>
				<td><input type="text" name="company" size="20" maxlength="100"></td>
			 </tr>
			 
			
			 
			 <tr>
			 	<td align="center">地址</td>
				<td><textarea rows="2" cols="45" name="adress"></textarea></td>
			 </tr>
			 <tr>
			 	<td width="42%" class="InputHeader"></td>
			 	<td align="center"><input type="submit" value="提交">
			 	<input type="reset" value="重填"></td>
			 </tr>
		</table>
	</form>
	
	
	
</table>
	
  </body>
</html>
