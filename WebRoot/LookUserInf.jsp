<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName

()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LookUserInf.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" 

content="keyword1,keyword2,keyword3">
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
    			    <a href="OperateAction?

method=returnindex"><font  color=green>
    			       ���ã�<% if (session.getAttribute

("status").equals("admin"))
    				{
    					out.println

(session.getAttribute("status")); 
    					out.println("<a href=\"adminview.jsp\">���ع���Ա����</a>|");
    					out.println("<a href=\"operateview.jsp\"> �������ԱȨ��</a>");
    					}
    				   else
    				   {
    				   		out.println

(session.getAttribute("operatetruename")); 
    				   		out.println("|<a href=\"OperateAction?method=returnindex\">������ҳ</a>|");
    				   		out.println("<a href=\"OperateAction?method=updateoperate\">�޸ĸ�����Ϣ</a>|");
    				   		out.println("<a href=\"OperateAction?method=operateexit\" >�˳�</a>|"); 
    				   		 
    				   }
    				     %>
    				     |������ҳ</font></a>
    			    </td>
    			</tr>
    </table>
    <br><br>
 <form action="OperateAction?method=lookuserinf" method="post" 

name="form2">
   <table align="center" border="2" cellpadding="10" cellspacing="6" 

bordercolor="3399FF">
        <tr><td align="center"><font color=green><b>������ͻ���������</b></font></td></tr>
        <tr><td align="center"><input type="text" name="name" size="20" maxlength="20"></td></tr>
    	<tr>
    	    <td align="center"><input type="submit" value="��ѯ">
    	        <input type="reset" value="����"></td>
    	</tr>
    </table>	
  </form>
    	<br>

 <c:forEach items="${list}" var="list">
        <br>
 <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
   <style type="text/css"> 
���� a:link { text-decoration: none;color: rgb(23,106,219)} 
���� a:active { text-decoration:blink} 
���� a:hover { text-decoration:underline;color: rgb(23,106,219)}  
���� a:visited { text-decoration: none;color: red} 
   </style>
    <tr>
      <td colspan=7 align="center"><font color=green size=5><b>������Ϣ</b></font></td>
    </tr>
    <tr>
      <td>������${list.name }</td>
      <td>��ţ�${list.id}</td>
      <td>�Ա�${list.sex }</td>
      <td>�������ڣ�${list.year }�� </td>
      <td>${list.month }�� </td>
      <td>${list.day}��</td>
      <td> ��ϵ��ʽ��${list.phone }</td>
    </tr>
    <tr>
      <td colspan=3>��λ����ѧУ����${list.company}</td>
      <td colspan=4>��ַ��${list.adress }</td>
     </tr>
   </table>
     <br>
   <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
     <tr>
      <td width=50% align="center" ><a href="OperateAction?method=modifyUser&id=${list.id }">�޸Ļ�����Ϣ</a></td>
      <td width=50% align="center" ><a href="OperateAction?method=deleteUser&id=${list.id }" onClick="window.confirm('ȷ��ɾ����')">ɾ������</a></td>
        </table>
       </c:forEach>
 
 	
    <c:forEach items="${list1}" var="list1">
 <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
   <style type="text/css"> 
��  �� a:link { text-decoration: none;color: rgb(23,106,219)} 
����   a:active { text-decoration:blink} 
��  �� a:hover { text-decoration:underline;color:rgb(23,106,219) }  
��  �� a:visited { text-decoration: none;color: red} 
   </style>
    <tr>
      <td colspan=7 align="center"><font color=green size=5><b>�����Ϣ</b></font></td>
    </tr>
    <tr>
      <td>�״η���ʱ�䣺${list1.firstill1 }&nbsp;${list1.firstill2 }&nbsp;${list1.firstill3 }&nbsp;${list1.firstill4 }</td>
      <td>���弰�����۲�ʷ��${list1.familyhistory1 }&nbsp;${list1.familyhistory2 }&nbsp;${list1.familyhistory3 }&nbsp;${list1.familyhistory4 }</td>
      <td>�������ƣ�${list1.posture }</td>
    </tr>
    <tr>
      <td align="center">�����</td>
      <td align="center">����</td>
      <td align="center">ͫ��</td>
    </tr>
    <tr>
      <td align="center">���ۣ�${list1.leftdiopter }&nbsp;&nbsp;���ۣ�${list1.rightdiopter }</td>
      <td align="center">���ۣ�${list1.leftaxis }&nbsp;&nbsp;���ۣ�${list1.rightaxis }</td>
      <td align="center">���ۣ�${list1.leftpd }&nbsp;&nbsp;���ۣ�${list1.rightpd }</td>
    </tr>   
  </table>
     <br>
  <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
    <tr>
      <td width=50% align="center" ><a href="OperateAction?method=modifyCheckUser&id=${list1.id }">�޸ļ����Ϣ</a></td>
      <td width=50% align="center" ><a href="OperateAction?method=deleteCheckUser&id=${list1.id }" onClick="window.confirm('ȷ��ɾ����')">ɾ������</a></td>
 </table>      
    </c:forEach>
 	<br>
 	<c:forEach items="${list2}" var="list2">
<table  align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="list-table" >
        <tr>
        <td colspan=7 align="center"><font color=green size=5><b>�侵��Ϣ</b></font></td>
		<tr>
			<td colspan=4>������${list2.name}</td>
			<td colspan=3>��ţ�${list2.id }</td>
		</tr>
		<tr>
			<td width=140px align="center"colspan=2>���</td> <td align="center">����</td> <td align="center">���澵</td> <td align="center">Բ����</td>
					                      <td align="center">����</td> <td align="center">���⾵</td> 
		</tr>
		<tr>
			<td rowspan=2>��Զ</td>
			<td>��</td>
			<td>${list2.vrnake }</td>
			<td>${list2.vrsphere }</td>
			<td>${list2.vrcylinder }</td>
			<td>${list2.vraxis }</td>
			<td>${list2.vrprism }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${list2.vlnake }</td>
			<td>${list2.vlsphere }</td>
			<td>${list2.vlcylinder }</td>
			<td>${list2.vlaxis }</td>
			<td>${list2.vlprism }</td>
		</tr>
		<tr>
			<td rowspan=2>�Ķ�</td>
			<td>��</td>
			<td>${list2.rrnake }</td>
			<td>${list2.rrsphere }</td>
			<td>${list2.rrcylinder }</td>
			<td>${list2.rraxis }</td>
			<td>${list2.rrprism }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${list2.rlnake }</td>
			<td>${list2.rlsphere }</td>
			<td>${list2.rlcylinder }</td>
			<td>${list2.rlaxis }</td>
			<td>${list2.rlprism }</td>
		</tr>		
		<tr>
		    <td align="center" colspan=2>���</td><td align="center">����</td><td align="center">���⾵</td> 
			<td align="center">����</td><td align="center">��������</td><td align="center">��ע</td>
		</tr>
		<tr>
			<td rowspan=2>��Զ</td>
			<td>��</td>
			<td>${list2.vrbottom }</td>
			<td>${list2.vrprism2 }</td>
			<td>${list2.vrbottom2 }</td>
			<td>${list2.vrfixed }</td>
			<td>${list2.vrcomment }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${list2.vlbottom }</td>
			<td>${list2.vlprism2 }</td>
			<td>${list2.vlbottom2 }</td>
			<td>${list2.vlfixed }</td>
			<td>${list2.vlcomment }</td>
		</tr>
		<tr>
			<td rowspan=2>�Ķ�</td>
			<td>��</td>
			<td>${list2.rrbottom }</td>
			<td>${list2.rrprism2 }</td>
			<td>${list2.rrbottom2 }</td>
			<td>${list2.rrfixed }</td>
			<td>${list2.rrcomment }</td>
		</tr>
		<tr>
			<td >��</td>
			<td>${list2.rlbottom }</td>
			<td>${list2.rlprism2 }</td>
			<td>${list2.rlbottom2 }</td>
			<td>${list2.rlfixed }</td>
			<td>${list2.rlcomment }</td>
		</tr>
</table>
      <br>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF"  class="middle-table">
		<tr>
		<tr> 
			<td align="center"> ��Ƭ</td><td> ${list2.glass }</td>
			<td> ${list2.glassnum }</td><td>��</td>
			<td>���</td><td>${list2.glassprice }</td>
		</tr>		
		<tr> 
			<td align="center">����</td><td>${list2.mounting }</td>
			<td>${list2.mountingnum }</td><td>��</td>
			<td>���</td><td>${list2.mountingprice }</td>
		</tr>
		<tr>
			<td align="center">�ϼƽ��</td><td align="right">${list2.allmountingprice }</td>
		</tr>
		<tr>
			<td>���Ա<td>${list2.optometrist }</td>
			<td>����Ա<td>${list2.decisionmaker }</td>
			<td>����Ա<td>${list2.trier }</td>
			<td>�տ�Ա<td>${list2.receiver }</td>
		</tr>
   </table>
     <br>
  <table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">
   <style type="text/css"> 
��  �� a:link { text-decoration: none;color: rgb(23,106,219)} 
����   a:active { text-decoration:blink} 
��  �� a:hover { text-decoration:underline;color:rgb(23,106,219)}  
��  �� a:visited { text-decoration: none;color: red } 
   </style>			
 		<tr>
 		    <td width=50% align="center" ><a href="OperateAction?method=modifypeijingxinxi&id=${list2.id }">�޸��侵��Ϣ</a></td>
			<td width=50% align="center" ><a href="OperateAction?method=deletePeijingxinxiUser&id=${list2.id }" 
			onClick="window.confirm('ȷ��ɾ����')">ɾ������</a></td>
        </tr>
       </table>
 	</c:forEach>
 	
  </body>
</html>
