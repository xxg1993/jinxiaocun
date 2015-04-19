<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <br><br><br><br><br>
  <table  align="center" border="0" 
          cellpadding="20" cellspacing="12" 
          bordercolor=rgb(41,208,243) >
  <style type="text/css"> 
    body { background-image: url(E:\xinworkspace\jinxiaocunTest\images\header-banner.jpg);
    background-repeat=no-repeat;
    background-size=1368px 768px;}
¡¡¡¡ a:link { text-decoration: none;color: rgb(255,255,255)} 
¡¡¡¡ a:active { text-decoration:blink} 
¡¡¡¡ a:hover { text-decoration:none;color: rgb(50,170,235)}  
¡¡¡¡ a:visited { text-decoration: none;color: rgb(255,255,255)}
    a:hover { text-decoration:none;color: rgb(50,170,235)} 
/* table{filter: Alpha(Opacity=30);}**/
    border{filter:Alpha(Opcity=30);}
¡¡¡¡ </style>
    <tr>
    <td align="center"><a href="adminland.jsp" ><font size=5 face="Î¢ÈíÑÅºÚ">¹ÜÀíÔ±µÇÂ¼</font></a></td>
    <td align="center"><a href="operateland.jsp"><font size=5 face="Î¢ÈíÑÅºÚ">²Ù×÷Ô±µÇÂ¼</font></a></td></tr>
    <tr>
    <td align="center"><a href="financialland.jsp" ><font size=5 face="Î¢ÈíÑÅºÚ">²ÆÎñÔ±µÇÂ¼</font></a></td>
    <td align="center"><a href="servicerland.jsp"><font size=5 face="Î¢ÈíÑÅºÚ">ÊÛºóÔ±µÇÂ¼</font></a></td></tr>
    </table>
  </body>
</html>
