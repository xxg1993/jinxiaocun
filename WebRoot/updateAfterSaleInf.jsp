<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ۺ�����¼</title>
    
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
    	<form action="OperateAction?method=updateUAfterSale" method="post">
    <table align="center" width=50% border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" >
    	   	<tr>
    	   		<td align="center" rowspan=2 width="40%"><font color=green size=6><b>��ü�¼</b></font></td>
    	   		<td width="90%">������${map.name}<input type="hidden" name="id" size="10" maxlength="10" value="${map.id}"></td>
    	   	</tr>
    	   	<tr>
    	   		<td>���:${map.id }<input type="hidden" name="id" size="10" maxlength="10" value="${map.name}"></td>
			 </tr>
    	     <tr>
    	     	<td align="center" class="InputHeader">ÿ�մ���ʱ��</td>
					<td colspan=2 ><select name="time">
					        <option value="ѡ��">${map.time}</option>
							<option>1Сʱ����</option>
							<option>1-3Сʱ</option>
							<option>3Сʱ����</option>
						</select>
				</td>
			 </tr>
			 <tr>	
			    <td align="center" class="InputHeader">��������</td>
				<td colspan=2><select name="feel">
				            <option value="ѡ��">${map.feel}</option>
							<option>����</option>
							<option>һ��</option>
							<option>����</option>
						</select>
				</td>
				</tr>
				<tr>	
			    <td align="center" class="InputHeader">�ҳ�����</td>
				<td  colspan=2><select name="supervise">
				            <option value="ѡ��">${map.supervise}</option>
							<option>��</option>
							<option>��</option>
						</select>
				</td>
				</tr>
				<tr>	
			    <td  align="center" class="InputHeader">�������Ƽ�������鷴��</td>
			    <td colspan=2><textarea rows="5" cols="40" name="adress" ></textarea>
			    </td>
			    </tr>
			    <tr>
			 	<td class="InputHeader"></td>
			 	<td colspan=2><input type="submit" value="�ύ">
			 	<input type="reset" value="����"></td>
			 </tr>
		</table>
	</form>
  </body>
</html>
