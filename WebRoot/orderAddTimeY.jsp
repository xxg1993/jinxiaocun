<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderAddTimeY.jsp' starting page</title>
    
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
     <iframe src="topAll.jsp" width="100%" height="60" frameborder="no"></iframe>
  
       <%
      		GregorianCalendar time=new GregorianCalendar();
      		int year1;
      		year1=time.get((time.YEAR));
          %>
  
  
    ��дԤԼ��Ϣ
   <form action="OrderAction?method=addOrderTimeY" method="post">
    <table align="center">
    
    	<tr>
    		<td>�ͻ�id</td>
    		<td><input type="text" name="id" readonly="true" value="${map.id }"></td>
    	</tr>
    
    	<tr>
    		<td>�ͻ�����</td>
    		<td><input type="text" name="name" readonly="true" value="${map.name }"></td>
    	</tr>
    	
    	<tr>
    		<td>��ϵ��ʽ</td>
    		<td><input type="text" name="phone"  value="${map.phone }"></td>
    	</tr>
    	
    	
    	<tr>
    		<td>��������</td>
    		<td>
    			�侵<input type="radio" name="work" value="�侵" >
				����<input type="radio" name="work" value="����" >
    		</td>
    		
    	</tr>
    	
    	
    	<tr>
    		<td>ԤԼʱ��</td>
    		<td>		<select name="year">
							<option value="ѡ��"><%=year1 %></option>
							<%
								for (int i=year1;i<=2050;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>��
				</td>
		
				<td>		<select name="month">
							<option value="ѡ��">1</option>
							<%
								for (int i=1;i<=12;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>��
				</td>
				
				<td>		<select name="day">
							<option value="ѡ��">1</option>
							<%
								for (int i=1;i<=31;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>��
				</td>
				
				<td>		<select name="hour">
							<option value="ѡ��">1</option>
							<%
								for (int i=1;i<=24;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>��
				</td>
				
				<td>		<select name="minute">
							<option value="ѡ��">1</option>
							<%
								for (int i=1;i<=60;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>��
				</td>
			</tr>
		</table>
		<input type="submit" value="�ύ">
		<input type="reset" value="��д">
	</form>	
				
    	
    	
  </body>
</html>
