<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LookUserInf.jsp' starting page</title>
    
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
��  �� a:link { text-decoration: none;color: rgb(23,106,219)} 
����   a:active { text-decoration:blink} 
��  �� a:hover { text-decoration:underline;color:rgb(23,106,219)}  
��  �� a:visited { text-decoration: none;color: red } 
        </style>
    			<tr>
    				<td align="right">
    			    <a href="OperateAction?method=returnindex"><font  color=green>
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
    				     |������ҳ</font></a>
    			    </td>
    			</tr>
    </table>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">    	
    <tr>
      <td><font color=green size=5><b>�ͻ���${map.name}��������Ϣ����</b></font></td>
    </tr>
</table>
   <br>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
    <tr>
      <td colspan=7 align="center"><font color=green size=5><b>������Ϣ</b></font></td>
    </tr>
    <tr>
      <td>������${map.name }</td>
      <td>��ţ�${map.id}</td>
      <td>�Ա�${map.sex }</td>
      <td>�������ڣ�${map.year }�� </td>
      <td>${map.month }�� </td>
      <td>${map.day}��</td>
      <td> ��ϵ��ʽ��${map.phone }</td>
    </tr>
    <tr>
      <td colspan=3>��λ����ѧУ����${map.company}</td>
      <td colspan=4>��ַ��${map.adress }</td>
     </tr>
    </table>
   <br>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
       <tr>
         <td colspan=7 align="center"><font color=green size=5><b>�����Ϣ</b></font></td>
    </tr>
    <tr>
      <td>�״η���ʱ�䣺${map1.firstill1 }&nbsp;${map1.firstill2 }&nbsp;${map1.firstill3 }&nbsp;${map1.firstill4 }</td>
      <td>���弰�����۲�ʷ��${map1.familyhistory1 }&nbsp;${map1.familyhistory2 }&nbsp;${map1.familyhistory3 }&nbsp;${map1.familyhistory4 }</td>
      <td>�������ƣ�${map1.posture }</td>
    </tr>
    <tr>
      <td align="center">�����</td>
      <td align="center">����</td>
      <td align="center">ͫ��</td>
    </tr>
    <tr>
      <td align="center">���ۣ�${map1.leftdiopter }&nbsp;&nbsp;���ۣ�${map1.rightdiopter }</td>
      <td align="center">���ۣ�${map1.leftaxis }&nbsp;&nbsp;���ۣ�${map1.rightaxis }</td>
      <td align="center">���ۣ�${map1.leftpd }&nbsp;&nbsp;���ۣ�${map1.rightpd }</td>
    </tr>
</table>
 		<br>
<table  align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="map-table" >
        <tr>
        <td colspan=7 align="center"><font color=green size=5><b>�侵��Ϣ</b></font></td>
		<tr>
			<td width=140px align="center"colspan=2>���</td> <td align="center">����</td> <td align="center">���澵</td> <td align="center">Բ����</td>
					                      <td align="center">����</td> <td align="center">���⾵</td> 
		</tr>
		<tr>
			<td rowspan=2>��Զ</td>
			<td>��</td>
			<td>${map2.vrnake }</td>
			<td>${map2.vrsphere }</td>
			<td>${map2.vrcylinder }</td>
			<td>${map2.vraxis }</td>
			<td>${map2.vrprism }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${map2.vlnake }</td>
			<td>${map2.vlsphere }</td>
			<td>${map2.vlcylinder }</td>
			<td>${map2.vlaxis }</td>
			<td>${map2.vlprism }</td>
		</tr>
		<tr>
			<td rowspan=2>�Ķ�</td>
			<td>��</td>
			<td>${map2.rrnake }</td>
			<td>${map2.rrsphere }</td>
			<td>${map2.rrcylinder }</td>
			<td>${map2.rraxis }</td>
			<td>${map2.rrprism }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${map2.rlnake }</td>
			<td>${map2.rlsphere }</td>
			<td>${map2.rlcylinder }</td>
			<td>${map2.rlaxis }</td>
			<td>${map2.rlprism }</td>
		</tr>		
		<tr>
		    <td align="center" colspan=2>���</td><td align="center">����</td><td align="center">���⾵</td> 
			<td align="center">����</td><td align="center">��������</td><td align="center">��ע</td>
		</tr>
		<tr>
			<td rowspan=2>��Զ</td>
			<td>��</td>
			<td>${map2.vrbottom }</td>
			<td>${map2.vrprism2 }</td>
			<td>${map2.vrbottom2 }</td>
			<td>${map2.vrfixed }</td>
			<td>${map2.vrcomment }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${map2.vlbottom }</td>
			<td>${map2.vlprism2 }</td>
			<td>${map2.vlbottom2 }</td>
			<td>${map2.vlfixed }</td>
			<td>${map2.vlcomment }</td>
		</tr>
		<tr>
			<td rowspan=2>�Ķ�</td>
			<td>��</td>
			<td>${map2.rrbottom }</td>
			<td>${map2.rrprism2 }</td>
			<td>${map2.rrbottom2 }</td>
			<td>${map2.rrfixed }</td>
			<td>${map2.rrcomment }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${map2.rlbottom }</td>
			<td>${map2.rlprism2 }</td>
			<td>${map2.rlbottom2 }</td>
			<td>${map2.rlfixed }</td>
			<td>${map2.rlcomment }</td>
		</tr>
</table>
      <br>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF"  class="middle-table">
		<tr>
		<tr> 
			<td align="center"> ��Ƭ</td><td> ${map2.glass }</td>
			<td> ${map2.glassnum }</td><td>��</td>
			<td>���</td><td>${map2.glassprice }</td>
		</tr>		
		<tr> 
			<td align="center">����</td><td>${map2.mounting }</td>
			<td>${map2.mountingnum }</td><td>��</td>
			<td>���</td><td>${map2.mountingprice }</td>
		</tr>
		<tr>
			<td align="center">�ϼƽ��</td><td align="right">${map2.allmountingprice }</td>
		</tr>
		<tr>
			<td>���Ա<td>${map2.optometrist }</td>
			<td>����Ա<td>${map2.decisionmaker }</td>
			<td>����Ա<td>${map2.trier }</td>
			<td>�տ�Ա<td>${map2.receiver }</td>
		</tr>
	  </table>
   </body>
</html>
