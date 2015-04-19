<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP "peijingxinxi.jsp" starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type=""text"/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date currentTime = new Date();
String date1 = formatter.format(currentTime); 
%>
   <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
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
   
          <form action="OperateAction?method=modifyUserPeijingxinxi" method="post">
			<table align="center" width=50% border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="list-table">
			
			<tr><input type="hidden" name="time" value="<%=date1 %>"></tr>
			<tr>
			<td align="center" colspan=5 rowspan=2><font color=green size=6><b>配镜参数</b></font></td>
			<td align="left" >上次修改时间时间</td>
			<td align="left">姓名：${map.name}<input type="hidden" name="name" value="${map.name}"></td>
			</tr>
			<tr>
			 <td align="left">${map.time}</td>
			 <td>Id：${map.id }<input type="hidden" name="id" value="${map.id}"></td>
			</tr>
				<tr>
					<td align="center"colspan=2>光度</td> <td align="center">裸视</td> <td align="center">球面镜</td> <td align="center">圆柱镜</td>
					                      <td align="center">轴向</td> <td align="center">三棱镜</td> 
				</tr>
				<tr>
					<td rowspan=2>视远</td> <td>右</td>
						<td><input type="text" name="VRNake" id="VRNake" tabIndex=1 value="${map.vrnake}"/></td>
						<td><input type="text" name="VRSphere" id="VRSphere" tabIndex=5 value="${map.vrsphere}"/></td>
						<td><input type="text" name="VRCylinder" id="VRCylinder" tabIndex=9 value="${map.vrcylinder}"/></td>
						<td><input type="text" name="VRAxis" id="VRAxis" tabIndex=13 value="${map.vraxis}"/></td>
						<td><input type="text" name="VRPrism" id="VRPrism" tabIndex=17 value="${map.vrprism}"/></td>
					</tr>
				<tr>
					<td >左</td>
						<td><input type="text" name="VLNake" id="VLNake" tabIndex=2 value="${map.vlnake}"/></td>
						<td><input type="text" name="VLSphere" id="VLSphere" tabIndex=6 value="${map.vlsphere}"/></td>
						<td><input type="text" name="VLCylinder" id="VLCylinder" tabIndex=10 value="${map.vlcylinder}"/></td>
						<td><input type="text" name="VLAxis" id="VLAxis" tabIndex=14 value="${map.vlaxis}"/></td>
						<td><input type="text" name="VLPrism" id="VLPrism" tabIndex=18 value="${map.vlprism}"/></td>
						</tr>
				<tr>
					<td rowspan=2>阅读</td> <td width=25px>右</td>
						<td><input type="text" name="RRNake" id="RRNake" tabIndex=3 value="${map.rrnake}"/></td>
						<td><input type="text" name="RRSphere" id="RRSphere" tabIndex=7 value="${map.rrsphere}"/></td>
						<td><input type="text" name="RRCylinder" id="RRCylinder" tabIndex=11 value="${map.rrcylinder}"/></td>
						<td><input type="text" name="RRAxis" id="RRAxis" tabIndex=15 value="${map.rraxis}"/></td>
						<td><input type="text" name="RRPrism" id="RRPrism" tabIndex=19 value="${map.rrprism}"/></td>
						</tr>
				<tr>
					<td >左</td>
						<td><input type="text" name="RLNake" id="RLNake" tabIndex=4 value="${map.rlnake}"/></td>
						<td><input type="text" name="RLSphere" id="RLSphere" tabIndex=8 value="${map.rlsphere}"/></td>
						<td><input type="text" name="RLCylinder" id="RLCylinder" tabIndex=12 value="${map.rlcylinder}"/></td>
						<td><input type="text" name="RLAxis" id="RLAxis" tabIndex=16 value="${map.rlaxis}"/></td>
						<td><input type="text" name="RLPrism" id="RLPrism" tabIndex=20 value="${map.rlprism}"/></td>
						</tr>
				<tr><td align="center" colspan=2>光度</td><td align="center">底向</td><td align="center">三棱镜</td> 
				<td align="center">底向</td><td align="center">矫正视力</td><td align="center">备注</td>
				</tr>
				<tr>
					<td rowspan=2>视远</td> <td>右</td>
						<td><input type="text" name="VRBottom" id="VRBottom" tabIndex=21 value="${map.vrbottom}"/></td>
						<td><input type="text" name="VRPrism2" id="VRPrism2" tabIndex=25 value="${map.vrprism2}"/></td>
						<td><input type="text" name="VRBottom2" id="VRBottom2" tabIndex=29 value="${map.vrbottom2}"/></td>
						<td><input type="text" name="VRFixed" id="VRFixed" tabIndex=33 value="${map.vrfixed}"/></td>
						<td><input type="text" name="VRComment" id="VRComment"tabIndex=37 value="${map.vrcomment}"/></td>
				</tr>
				<tr>
					<td >左</td>
					    <td><input type="text" name="VLBottom" id="VLBottom" tabIndex=22 value="${map.rlnake}"}"/></td>
						<td><input type="text" name="VLPrism2" id="VLPrism2" tabIndex=26 value="${map.vlprism2}"/></td>
						<td><input type="text" name="VLBottom2" id="VLBottom2" tabIndex=30 value="${map.vlbottom2}"/></td>
						<td><input type="text" name="VLFixed" id="VLFixed" tabIndex=34 value="${map.vlfixed}"/></td>
						<td><input type="text" name="VLComment" id="VLComment" tabIndex=38 value="${map.vlcomment}"/></td>
				</tr>
				<tr>
					<td rowspan=2>阅读</td> <td>右</td>
					<td><input type="text" name="RRBottom" id="RRBottom" tabIndex=23 value="${map.rrbottom}"/></td>
						<td><input type="text" name="RRPrism2" id="RRPrism2" tabIndex=27 value="${map.rrprism2}"/></td>
						<td><input type="text" name="RRBottom2" id="RRBottom2" tabIndex=31 value="${map.rrbottom2}"/></td>
						<td><input type="text" name="RRFixed" id="RRFixed" tabIndex=35 value="${map.rrfixed}"/></td>
						<td><input type="text" name="RRComment" id="RRComment" tabIndex=39 value="${map.rrcomment}"/></td>
				</tr>
				<tr>
					<td >左</td>
						<td><input type="text" name="RLBottom" id="RLBottom" tabIndex=24 value="${map.rlbottom}"/></td>
						<td><input type="text" name="RLPrism2" id="RLPrism2" tabIndex=28 value="${map.rlprism2}"/></td>
						<td><input type="text" name="RLBottom2" id="RLBottom2" tabIndex=32 value="${map.rlbottom2}"/></td>
						<td><input type="text" name="RLFixed" id="RLFixed" tabIndex=36 value="${map.rlfixed}"/></td>
						<td><input type="text" name="RLComment" id="RLComment" tabIndex=40 value="${map.rlcomment}"/></td>
				</tr>
			</table>
			<br>
			<table  align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="middle-table">
			    <tr> 
					<td align="center"> 镜片<td> <input type="text" name="glass" id="glass" value="${map.glass}"/>
					<td><input type="text" name="glassNum" id="glassNum" value="${map.glassnum}"/><td>副</td>
					<td>金额</td><td><input type="text" name="glassPrice" id="glassPrice" value="${map.glassprice}"/>
				</tr>		
				<tr> 
					<td align="center">镜架</td><td><input type="text" name="mounting" id="mounting" value="${map.mounting}"/>
					<td><input type="text" name="mountingNum" id="mountingNum" value="${map.mountingnum}"/></td><td>副</td>
					<td>金额</td><td><input type="text" name="mountingPrice" id="mountingPrice" value="${map.mountingprice}"/>
				</tr>
				<tr>
					<td align="center">合计金额</td><td align="right"><input type="text" name="allmountingPrice" id="allmountingPrice" value="${map.allmountingprice}"/>
				</tr>
				</table>
				<br>
			<table  align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="lowest-table">
				<tr>
				    <td>验光员<input type="text" name="optometrist" id="optometrist" value="${map.optometrist}"/>
					<td>定配员<input type="text" name="decisionMaker" id="decisionMaker" value="${map.decisionmaker}"/>
					<td>检验员<input type="text" name="trier" id="trier" value="${map.trier}"/>
					<td>收款员<input type="text" name="receiver" id="receiver" value="${map.receiver}"/>
				</tr>
				<tr>
				<td align="center" colspan="2"><input type="submit"   value="提交"/>
			    <td align="center" colspan="2"><input type="reset"  value="重填"></td></tr>
			</table>			
			</form>
		</body>
		</html>
