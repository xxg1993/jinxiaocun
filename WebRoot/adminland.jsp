<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>π‹¿Ì‘±µ«¬ΩΩÁ√Ê</title>
    
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
  <br><br><br>
     <form action="AdminAction?method=adminlogin" method="post" name="form1">
     <table align="center" border="0" cellpadding="10" cellspacing="6" bordercolor="3399FF" >
     <style type="text/css">
body {
	background-image:
		url(E:\xinworkspace\jinxiaocunTest\images\header-banner.jpg);
	background-repeat
	=no-repeat;
	background-size
	=1368px
	768px;
}

°°°° a:link {
	text-decoration: none;
	color: rgb(255, 255, 255)
}

°°°° a:active {
	text-decoration: blink
}

°°°° a:hover {
	text-decoration: none;
	color: rgb(50, 170, 235)
}

°°°° a:visited {
	text-decoration: none;
	color: rgb(255, 255, 255)
}

}
input,textarea {
	background-color: none;
	color: white;
	family: Œ¢»Ì—≈∫⁄;
	filter: Alpha(Opacity = 100%);
}
°°°°
</style>
     <tr><td></td><td align="center" colspan="2"><font color=rgb(100,240,100) size=5><b>π‹¿Ì‘±µ«¬º</b></font></td>
     </tr>
     <tr>
     	<td><font color=rgb(228,228,228) face="Œ¢»Ì—≈∫⁄">√˚◊÷</font></td><td><input type="text" name="adminname" style="filter: Alpha(Opacity=40);" size="20" maxlength="20">
     	</td></tr>
     	<tr>
     	<td><font color=rgb(228,228,228) face="Œ¢»Ì—≈∫⁄">√‹¬Î</font></td><td><input type="text" name="adminpassword" style="filter: Alpha(Opacity=40);" size="20" maxlength="20"></td>
     	</tr>
     	<tr><td></td>
     	<td align="center"><font color=green><input type="submit" value="µ«¬º" style="width:60px;height:35px;color=rgb(50,150,220);font-size:18px;font-family:Œ¢»Ì—≈∫⁄"> 
     	<input type="reset" value="÷ÿÃÓ" style="width:60px;height:35px;color=rgb(50,150,220);font-size:18px;font-family:Œ¢»Ì—≈∫⁄"></font></td>
     	</tr>
     	</table>
     </form>  
  </body>
</html>