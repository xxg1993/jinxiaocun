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
  
  
    填写预约信息
   <form action="OrderAction?method=addOrderTimeY" method="post">
    <table align="center">
    
    	<tr>
    		<td>客户id</td>
    		<td><input type="text" name="id" readonly="true" value="${map.id }"></td>
    	</tr>
    
    	<tr>
    		<td>客户姓名</td>
    		<td><input type="text" name="name" readonly="true" value="${map.name }"></td>
    	</tr>
    	
    	<tr>
    		<td>联系方式</td>
    		<td><input type="text" name="phone"  value="${map.phone }"></td>
    	</tr>
    	
    	
    	<tr>
    		<td>进行事务</td>
    		<td>
    			配镜<input type="radio" name="work" value="配镜" >
				复查<input type="radio" name="work" value="复查" >
    		</td>
    		
    	</tr>
    	
    	
    	<tr>
    		<td>预约时间</td>
    		<td>		<select name="year">
							<option value="选择"><%=year1 %></option>
							<%
								for (int i=year1;i<=2050;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>年
				</td>
		
				<td>		<select name="month">
							<option value="选择">1</option>
							<%
								for (int i=1;i<=12;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>月
				</td>
				
				<td>		<select name="day">
							<option value="选择">1</option>
							<%
								for (int i=1;i<=31;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>日
				</td>
				
				<td>		<select name="hour">
							<option value="选择">1</option>
							<%
								for (int i=1;i<=24;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>点
				</td>
				
				<td>		<select name="minute">
							<option value="选择">1</option>
							<%
								for (int i=1;i<=60;i++)
									out.println("<option>"+i+"</option>");
							 %>
						</select>分
				</td>
			</tr>
		</table>
		<input type="submit" value="提交">
		<input type="reset" value="重写">
	</form>	
				
    	
    	
  </body>
</html>
