<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ͻ�������Ϣ¼��</title>
    
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
        <%
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date currentTime = new Date();
String date1 = formatter.format(currentTime); 
%>
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
        <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
    
      <font color="green">�û�id:${map.id }  �û�������${map.name }   ���������޸ģ�</font><br>
 
    <br><br><hr>
    
 <!--     <font color="green">�û�id:${map.id }  �û�������${map.name }   ��������¼�룺</font><br>-->  
      

    	<form action="OperateAction?method=updatecheckUserInf" method="post">
    	 <table align="center" width=50% border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
    	   	<tr>
    	   		<td>������${map.name }<input type="hidden" name="name" size="10" maxlength="10" value="${map.name }"></td>
    	   		<td>id:${map.id }<input type="hidden" name="id" size="10" maxlength="10" value="${map.id}"></td>
    	   		<td align="center"><font color=green size=6><b>�����Ϣ</b></font></td>
			 </tr>
			 
			<tr>
				<td width="28%" align="center"  colspan=2 class="InputHeader">�ϴ��޸�ʱ��</td>
				<td>${map.time }</td>
			</tr>
			 
			 <tr>
				<input type="hidden" name="time" value="<%=date1 %>">
			</tr>
			 
    	     <tr>
    	     	<td width="28%" align="center"  colspan=2 class="InputHeader">�״η���ʱ��</td>
				<td style="width: 587px; ">
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="����">����
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="ɢ��">ɢ��
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="б��">б��
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="����">����
				<input type="hidden" name="firstIll" size="10" maxlength="10" value="û��">
				</td>
			 </tr>
			 <tr>
			    <td width="28%" align="center" colspan=2  class="InputHeader">���岡ʷ</td>
				<td><input type="checkbox" name="familyHistory" size="10" maxlength="10" value="����">����
				<input type="checkbox" name="familyHistory" size="10" maxlength="10" value="������">������
				<input type="checkbox" name="familyHistory" size="10" maxlength="10" value="�����">�����
				<input type="checkbox" name="familyHistory" size="10" maxlength="10" value="����Ĥ����">����Ĥ����
				<input type="hidden" name="familyHistory" size="10" maxlength="10" value="û��">
				</td>
			 </tr>
			 <tr>	
			    <td width="28%" align="center" colspan=2 class="InputHeader">��������</td>
				<td>
						<select name="posture">
							<option value="ѡ��">-ѡ��-</option>
							<option>��</option>
							<option>��</option>
							<option>��</option>
							<option>��</option>
						</select>
				</td>
			 </tr>
			
			 <tr>
			 <td align="center" colspan=2>�����</td>
			 <td>����<input type="text" name="LeftDiopter" value="${map.leftdiopter}">
			 	  ����<input type="text" name="RightDiopter" value="${map.rightdiopter}"></td>
			 </tr>
			 <tr>
			 
			 <td align="center" colspan=2>����</td>
			 <td>����<input type="text" name="LeftAxis" value="${map.leftaxis}">
			 ����<input type="text" name="RightAxis" value="${map.rightaxis}"></td>
			 </tr>
			 <tr>
			<td align="center" colspan=2>ͫ��</td>
			<td>����<input type="text" name="LeftPD" value="${map.leftpd}">
			 ����<input type="text" name="RightPD" value="${map.rightpd}"></td>
			 </tr>
			 <tr>
			 	<td class="InputHeader" colspan=2></td>
			 	<td align="center">
			 	<input type="submit" value="�ύ">
			 	<input type="reset" value="����"></td>
			 </tr>
		</table>		
    	</form>
  </body>
</html>
