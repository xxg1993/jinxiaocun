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
  
  
      <font color="green" align="center">�鿴��ü�¼</font><br>

    	
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
					<td>
					        ${map.time}
							
				</td>
			 </tr>
			 <tr>	
			    <td align="center" class="InputHeader">��������</td>
				<td>${map.feel}
				</td>
				</tr>
				<tr>	
			    <td align="center" class="InputHeader">�ҳ�����</td>
				<td>${map.supervise}
				</td>
				</tr>
				<tr>	
			    <td align="center" class="InputHeader">�������Ƽ�������鷴��</td>
			    <td>${map.advise}
			    </td>
			    </tr>
			 
		</table>
	
  </body>
</html>
