<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
      <iframe src="topAdminOperate.jsp" width="100%" height="60" frameborder="no"></iframe>
   
          <form action="OperateAction?method=peijingxinxi" method="post">
			<table width="50%" align="center" border="1" class="list-table" >
			<tr>
			<td align="left" colspan=4>������${map.name}<input type="hidden" name="name" value="${map.name}"></td>
			<td colspan=3>Id��${map.id }<input type="hidden" name="id" value="${map.id}"></td>
			</tr>
				<tr>
					<td width=140px align="center"colspan=2>���</td> <td align="center">����</td> <td align="center">���澵</td> <td align="center">Բ����</td>
					                      <td align="center">����</td> <td align="center">���⾵</td> 
				</tr>
				<tr>
					<td rowspan=2>��Զ</td> <td>��</td>
						<td><input type="text" name="VRNake" id="VRNake" tabIndex=1/></td>
						<td><input type="text" name="VRSphere" id="VRSphere" tabIndex=5/></td>
						<td><input type="text" name="VRCylinder" id="VRCylinder" tabIndex=9/></td>
						<td><input type="text" name="VRAxis" id="VRAxis" tabIndex=13/></td>
						<td><input type="text" name="VRPrism" id="VRPrism" tabIndex=17/></td>
					</tr>
				<tr>
					<td >��</td>
						<td><input type="text" name="VLNake" id="VLNake" tabIndex=2/></td>
						<td><input type="text" name="VLSphere" id="VLSphere" tabIndex=6/></td>
						<td><input type="text" name="VLCylinder" id="VLCylinder" tabIndex=10/></td>
						<td><input type="text" name="VLAxis" id="VLAxis" tabIndex=14/></td>
						<td><input type="text" name="VLPrism" id="VLPrism" tabIndex=18/></td>
						</tr>
				<tr>
					<td rowspan=2>�Ķ�</td> <td width=25px>��</td>
						<td><input type="text" name="RRNake" id="RRNake" tabIndex=3/></td>
						<td><input type="text" name="RRSphere" id="RRSphere" tabIndex=7/></td>
						<td><input type="text" name="RRCylinder" id="RRCylinder" tabIndex=11/></td>
						<td><input type="text" name="RRAxis" id="RRAxis" tabIndex=15/></td>
						<td><input type="text" name="RRPrism" id="RRPrism" tabIndex=19/></td>
						</tr>
				<tr>
					<td >��</td>
						<td><input type="text" name="RLNake" id="RLNake" tabIndex=4/></td>
						<td><input type="text" name="RLSphere" id="RLSphere" tabIndex=8/></td>
						<td><input type="text" name="RLCylinder" id="RLCylinder" tabIndex=12/></td>
						<td><input type="text" name="RLAxis" id="RLAxis" tabIndex=16/></td>
						<td><input type="text" name="RLPrism" id="RLPrism" tabIndex=20/></td>
						</tr>
				<tr><td align="center" colspan=2>���</td><td align="center">����</td><td align="center">���⾵</td> 
				<td align="center">����</td><td align="center">��������</td><td align="center">��ע</td>
				</tr>
				<tr>
					<td rowspan=2>��Զ</td> <td>��</td>
						<td><input type="text" name="VRBottom" id="VRBottom" tabIndex=21/></td>
						<td><input type="text" name="VRPrism2" id="VRPrism2" tabIndex=25/></td>
						<td><input type="text" name="VRBottom2" id="VRBottom2" tabIndex=29/></td>
						<td><input type="text" name="VRFixed" id="VRFixed" tabIndex=33/></td>
						<td><input type="text" name="VRComment" id="VRComment"tabIndex=37/></td>
				</tr>
				<tr>
					<td >��</td>
					    <td><input type="text" name="VLBottom" id="VLBottom" tabIndex=22/></td>
						<td><input type="text" name="VLPrism2" id="VLPrism2" tabIndex=26/></td>
						<td><input type="text" name="VLBottom2" id="VLBottom2" tabIndex=30/></td>
						<td><input type="text" name="VLFixed" id="VLFixed" tabIndex=34/></td>
						<td><input type="text" name="VLComment" id="VLComment" tabIndex=38/></td>
				</tr>
				<tr>
					<td rowspan=2>�Ķ�</td> <td>��</td>
					<td><input type="text" name="RRBottom" id="RRBottom" tabIndex=23/></td>
						<td><input type="text" name="RRPrism2" id="RRPrism2" tabIndex=27/></td>
						<td><input type="text" name="RRBottom2" id="RRBottom2" tabIndex=31/></td>
						<td><input type="text" name="RRFixed" id="RRFixed" tabIndex=35/></td>
						<td><input type="text" name="RRComment" id="RRComment" tabIndex=39/></td>
				</tr>
				<tr>
					<td >��</td>
						<td><input type="text" name="RLBottom" id="RLBottom" tabIndex=24/></td>
						<td><input type="text" name="RLPrism2" id="RLPrism2" tabIndex=28/></td>
						<td><input type="text" name="RLBottom2" id="RLBottom2" tabIndex=32/></td>
						<td><input type="text" name="RLFixed" id="RLFixed" tabIndex=36/></td>
						<td><input type="text" name="RLComment" id="RLComment" tabIndex=40/></td>
				</tr>
			</table>
			<table width="50%" align="center" border="1" class="middle-table">
			<tr>
				<tr> 
					<td align="center"> ��Ƭ<td> <input type="text" name="glass" id="glass"/>
					<td><input type="text" name="glassNum" id="glassNum"/><td>��</td>
					<td>���</td><td><input type="text" name="glassPrice" id="glassPrice"/>
				</tr>		
				<tr> 
					<td align="center">����</td><td><input type="text" name="mounting" id="mounting"/>
					<td><input type="text" name="mountingNum" id="mountingNum"/></td><td>��</td>
					<td>���</td><td><input type="text" name="mountingPrice" id="mountingPrice"/>
				</tr>
				<tr>
					<td align="center">�ϼƽ��</td><td align="right"><input type="text" name="allmountingPrice" id="allmountingPrice"/>
				</tr>
				</table>
				<table width="50%" align="center" border="1" class="lowest-table">
				<tr>
				    <td>���Ա<input type="text" name="optometrist" id="optometrist"/>
					<td>����Ա<input type="text" name="decisionMaker" id="decisionMaker"/>
					<td>����Ա<input type="text" name="trier" id="trier"/>
					<td>�տ�Ա<input type="text" name="receiver" id="receiver"/>
				</tr>
				<tr>
				<td align="center" colspan="2"><input type="submit"   value="�ύ"/>
			    <td align="center" colspan="2"><input type="reset"  value="����"></td></tr>
			</table>			
			</form>
		</body>
		</html>
