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
　  　 a:link { text-decoration: none;color: rgb(23,106,219)} 
　　   a:active { text-decoration:blink} 
　  　 a:hover { text-decoration:underline;color:rgb(23,106,219)}  
　  　 a:visited { text-decoration: none;color: red } 
        </style>
    			<tr>
    				<td align="right">
    			    <a href="OperateAction?method=returnindex"><font  color=green>
    			    您好：<% if (session.getAttribute("status").equals("admin"))
    				{
    					out.println(session.getAttribute("status")); 
    					out.println("<a href=\"adminview.jsp\">返回管理员界面</a>|");
    					out.println("<a href=\"operateview.jsp\"> 进入操作员权限</a>");
    					
    				    
    				    }
    				   else
    				   {
    				   		out.println(session.getAttribute("operatetruename")); 
    				   		out.println("|<a href=\"OperateAction?method=returnindex\">返回首页</a>|");
    				   		out.println("<a href=\"OperateAction?method=updateoperate\">修改个人信息</a>|");
    				   		out.println("<a href=\"OperateAction?method=operateexit\" >退出</a>|"); 
    				   		 
    				   }
    				     %>
    				     |返回首页</font></a>
    			    </td>
    			</tr>
    </table>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF">    	
    <tr>
      <td><font color=green size=5><b>客户：${map.name}的所有信息如下</b></font></td>
    </tr>
</table>
   <br>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
    <tr>
      <td colspan=7 align="center"><font color=green size=5><b>基本信息</b></font></td>
    </tr>
    <tr>
      <td>姓名：${map.name }</td>
      <td>编号：${map.id}</td>
      <td>性别：${map.sex }</td>
      <td>出生日期：${map.year }年 </td>
      <td>${map.month }月 </td>
      <td>${map.day}日</td>
      <td> 联系方式：${map.phone }</td>
    </tr>
    <tr>
      <td colspan=3>单位（或学校）：${map.company}</td>
      <td colspan=4>地址：${map.adress }</td>
     </tr>
    </table>
   <br>
<table align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="InputTable">
       <tr>
         <td colspan=7 align="center"><font color=green size=5><b>检查信息</b></font></td>
    </tr>
    <tr>
      <td>首次发现时间：${map1.firstill1 }&nbsp;${map1.firstill2 }&nbsp;${map1.firstill3 }&nbsp;${map1.firstill4 }</td>
      <td>家族及个人眼病史：${map1.familyhistory1 }&nbsp;${map1.familyhistory2 }&nbsp;${map1.familyhistory3 }&nbsp;${map1.familyhistory4 }</td>
      <td>用眼姿势：${map1.posture }</td>
    </tr>
    <tr>
      <td align="center">屈光度</td>
      <td align="center">轴向</td>
      <td align="center">瞳距</td>
    </tr>
    <tr>
      <td align="center">左眼：${map1.leftdiopter }&nbsp;&nbsp;右眼：${map1.rightdiopter }</td>
      <td align="center">左眼：${map1.leftaxis }&nbsp;&nbsp;右眼：${map1.rightaxis }</td>
      <td align="center">左眼：${map1.leftpd }&nbsp;&nbsp;右眼：${map1.rightpd }</td>
    </tr>
</table>
 		<br>
<table  align="center" border="2" cellpadding="10" cellspacing="6" bordercolor="3399FF" class="map-table" >
        <tr>
        <td colspan=7 align="center"><font color=green size=5><b>配镜信息</b></font></td>
		<tr>
			<td width=140px align="center"colspan=2>光度</td> <td align="center">裸视</td> <td align="center">球面镜</td> <td align="center">圆柱镜</td>
					                      <td align="center">轴向</td> <td align="center">三棱镜</td> 
		</tr>
		<tr>
			<td rowspan=2>视远</td>
			<td>右</td>
			<td>${map2.vrnake }</td>
			<td>${map2.vrsphere }</td>
			<td>${map2.vrcylinder }</td>
			<td>${map2.vraxis }</td>
			<td>${map2.vrprism }</td>
		</tr>
		<tr>
			<td >左</td>
			<td>${map2.vlnake }</td>
			<td>${map2.vlsphere }</td>
			<td>${map2.vlcylinder }</td>
			<td>${map2.vlaxis }</td>
			<td>${map2.vlprism }</td>
		</tr>
		<tr>
			<td rowspan=2>阅读</td>
			<td>右</td>
			<td>${map2.rrnake }</td>
			<td>${map2.rrsphere }</td>
			<td>${map2.rrcylinder }</td>
			<td>${map2.rraxis }</td>
			<td>${map2.rrprism }</td>
		</tr>
		<tr>
			<td >左</td>
			<td>${map2.rlnake }</td>
			<td>${map2.rlsphere }</td>
			<td>${map2.rlcylinder }</td>
			<td>${map2.rlaxis }</td>
			<td>${map2.rlprism }</td>
		</tr>		
		<tr>
		    <td align="center" colspan=2>光度</td><td align="center">底向</td><td align="center">三棱镜</td> 
			<td align="center">底向</td><td align="center">矫正视力</td><td align="center">备注</td>
		</tr>
		<tr>
			<td rowspan=2>视远</td>
			<td>右</td>
			<td>${map2.vrbottom }</td>
			<td>${map2.vrprism2 }</td>
			<td>${map2.vrbottom2 }</td>
			<td>${map2.vrfixed }</td>
			<td>${map2.vrcomment }</td>
		</tr>
		<tr>
			<td >左</td>
			<td>${map2.vlbottom }</td>
			<td>${map2.vlprism2 }</td>
			<td>${map2.vlbottom2 }</td>
			<td>${map2.vlfixed }</td>
			<td>${map2.vlcomment }</td>
		</tr>
		<tr>
			<td rowspan=2>阅读</td>
			<td>右</td>
			<td>${map2.rrbottom }</td>
			<td>${map2.rrprism2 }</td>
			<td>${map2.rrbottom2 }</td>
			<td>${map2.rrfixed }</td>
			<td>${map2.rrcomment }</td>
		</tr>
		<tr>
			<td >左</td>
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
			<td align="center"> 镜片</td><td> ${map2.glass }</td>
			<td> ${map2.glassnum }</td><td>副</td>
			<td>金额</td><td>${map2.glassprice }</td>
		</tr>		
		<tr> 
			<td align="center">镜架</td><td>${map2.mounting }</td>
			<td>${map2.mountingnum }</td><td>副</td>
			<td>金额</td><td>${map2.mountingprice }</td>
		</tr>
		<tr>
			<td align="center">合计金额</td><td align="right">${map2.allmountingprice }</td>
		</tr>
		<tr>
			<td>验光员<td>${map2.optometrist }</td>
			<td>定配员<td>${map2.decisionmaker }</td>
			<td>检验员<td>${map2.trier }</td>
			<td>收款员<td>${map2.receiver }</td>
		</tr>
	  </table>
   </body>
</html>
