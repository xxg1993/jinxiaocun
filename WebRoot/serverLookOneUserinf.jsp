<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>售后服务记录</title>
    
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
      <iframe src="topAdminServer.jsp" width="100%" height="60" frameborder="no"></iframe>
  
      <font color="green" align="center">查看随访记录</font><br>

    	
    <table align="center" width=50% border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" >
    	   	<tr>
    	   		<td align="center" rowspan=2 width="40%"><font color=green size=6><b>随访记录</b></font></td>
    	   		<td width="90%">姓名：${map.name}<input type="hidden" name="id" size="10" maxlength="10" value="${map.id}"></td>
    	   	</tr>
    	   	<tr>
    	   		<td>编号:${map.id }<input type="hidden" name="id" size="10" maxlength="10" value="${map.name}"></td>
			 </tr>
			 
			 <tr>
				<td width="28%" align="center"   class="InputHeader">上次修改时间</td>
				<td>${map.nowtime }</td>		 
			 </tr>
			 
    	     <tr>
    	     	<td align="center" class="InputHeader">每日戴镜时间</td>
					<td>
					        ${map.time}
							
				</td>
			 </tr>
			 <tr>	
			    <td align="center" class="InputHeader">戴镜感受</td>
				<td>${map.feel}
				</td>
				</tr>
				<tr>	
			    <td align="center" class="InputHeader">家长督促</td>
				<td>${map.supervise}
				</td>
				</tr>
				<tr>	
			    <td align="center" class="InputHeader">视力改善及意见建议反馈</td>
			    <td>${map.advise}
			    </td>
			    </tr>
			 
		</table>
	
  </body>
</html>
