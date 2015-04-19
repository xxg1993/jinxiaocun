<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>客户其他信息录入</title>
    
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
　  　 a:link { text-decoration: none;color: rgb(23,106,219)} 
　　   a:active { text-decoration:blink} 
　  　 a:hover { text-decoration:underline;color:rgb(23,106,219)}  
　  　 a:visited { text-decoration: none;color: red } 
        </style>
    			<tr>
    				<td align="right">
    			    <a href="OperateAction?method=returnindex"><font  color=green>返回首页</font></a>
    			    </td>
    			</tr>
    </table>
        <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
    
      <font color="green">用户id:${map.id }  用户姓名：${map.name }   其他资料修改：</font><br>
 
    <br><br><hr>
    
 <!--     <font color="green">用户id:${map.id }  用户姓名：${map.name }   其他资料录入：</font><br>-->  
      

    	<form action="OperateAction?method=updatecheckUserInf" method="post">
    	 <table align="center" width=50% border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
    	   	<tr>
    	   		<td>姓名：${map.name }<input type="hidden" name="name" size="10" maxlength="10" value="${map.name }"></td>
    	   		<td>id:${map.id }<input type="hidden" name="id" size="10" maxlength="10" value="${map.id}"></td>
    	   		<td align="center"><font color=green size=6><b>检查信息</b></font></td>
			 </tr>
			 
			<tr>
				<td width="28%" align="center"  colspan=2 class="InputHeader">上次修改时间</td>
				<td>${map.time }</td>
			</tr>
			 
			 <tr>
				<input type="hidden" name="time" value="<%=date1 %>">
			</tr>
			 
    	     <tr>
    	     	<td width="28%" align="center"  colspan=2 class="InputHeader">首次发现时间</td>
				<td style="width: 587px; ">
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="近视">近视
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="散光">散光
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="斜视">斜视
				<input type="checkbox" name="firstIll" size="10" maxlength="10" value="弱视">弱视
				<input type="hidden" name="firstIll" size="10" maxlength="10" value="没有">
				</td>
			 </tr>
			 <tr>
			    <td width="28%" align="center" colspan=2  class="InputHeader">家族病史</td>
				<td><input type="checkbox" name="familyHistory" size="10" maxlength="10" value="近视">近视
				<input type="checkbox" name="familyHistory" size="10" maxlength="10" value="白内障">白内障
				<input type="checkbox" name="familyHistory" size="10" maxlength="10" value="青光眼">青光眼
				<input type="checkbox" name="familyHistory" size="10" maxlength="10" value="视网膜病变">视网膜病变
				<input type="hidden" name="familyHistory" size="10" maxlength="10" value="没有">
				</td>
			 </tr>
			 <tr>	
			    <td width="28%" align="center" colspan=2 class="InputHeader">用眼姿势</td>
				<td>
						<select name="posture">
							<option value="选择">-选择-</option>
							<option>优</option>
							<option>良</option>
							<option>中</option>
							<option>差</option>
						</select>
				</td>
			 </tr>
			
			 <tr>
			 <td align="center" colspan=2>屈光度</td>
			 <td>左眼<input type="text" name="LeftDiopter" value="${map.leftdiopter}">
			 	  右眼<input type="text" name="RightDiopter" value="${map.rightdiopter}"></td>
			 </tr>
			 <tr>
			 
			 <td align="center" colspan=2>轴向</td>
			 <td>左眼<input type="text" name="LeftAxis" value="${map.leftaxis}">
			 右眼<input type="text" name="RightAxis" value="${map.rightaxis}"></td>
			 </tr>
			 <tr>
			<td align="center" colspan=2>瞳距</td>
			<td>左眼<input type="text" name="LeftPD" value="${map.leftpd}">
			 右眼<input type="text" name="RightPD" value="${map.rightpd}"></td>
			 </tr>
			 <tr>
			 	<td class="InputHeader" colspan=2></td>
			 	<td align="center">
			 	<input type="submit" value="提交">
			 	<input type="reset" value="重填"></td>
			 </tr>
		</table>		
    	</form>
  </body>
</html>
