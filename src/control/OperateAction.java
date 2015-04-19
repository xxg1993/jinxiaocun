package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.OperateServlet;

public class OperateAction extends HttpServlet {


	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action=request.getParameter("method");
		System.out.println("get:"+action);
		if (action.equals("operateexit"))
		{
			operateexit(request, response);
		}
		else if (action.endsWith("medicalhistroy"))
		{
			medicalhistroy(request, response);
		}
		else if (action.equals("modifyUser"))
		{
			modifyUser(request, response);
		}
		else if (action.equals("deleteUser"))
		{
			deleteUser(request, response);
		}
		else if (action.equals("lookAllUsers"))
		{
			lookAllUsers(request, response);
		}
		else if (action.equals("LookAllUserOrderByName"))
		{
			LookAllUserOrderByName(request, response);
		}
		else if (action.equals("tiaoZhuanInputCheckInf"))
		{
			tiaoZhuanInputCheckInf(request, response);
		}
		else if (action.equals("modifyCheckUser"))
		{
			modifyCheckUser(request, response);
		}
		else if (action.equals("modifypeijingxinxi"))
		{
			modifypeijingxinxi(request, response);
		}
		else if (action.equals("deleteCheckUser"))
		{
			deleteCheckUser(request, response);
		}
		else if (action.equals("deletePeijingxinxiUser"))
		{
			deletePeijingxinxiUser(request, response);
		}
		else if (action.equals("getoneuser"))
		{
			getoneuser(request, response);
		}
		else if (action.equals("returnindex"))
		{
			returnindex(request, response);
		}
		else if (action.equals("updateoperate"))
		{
			updateoperate(request, response);
		}
		else if (action.equals("deletePartOrder"))
		{
			deletePartOrder(request, response);
		}

	}
	
	

	
	//�޸Ĳ���Ա��Ϣ
	private void updateoperate(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String operatetruename=(String)session.getAttribute("operatetruename");
		OperateServlet user=new OperateServlet();
		Map map=user.selectOperate(operatetruename);
		request.setAttribute("map", map);
		request.getRequestDispatcher("updateoperate.jsp").forward(request, response);
	}
	
	   
	//������ҳ
	private void returnindex(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String operatetruename=(String)session.getAttribute("operatetruename");
		request.getRequestDispatcher("operateview.jsp").forward(request, response);
	}
		
	

		//����Ա�˳�
		private void operateexit(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			
			request.setCharacterEncoding("gbk");
			HttpSession session=request.getSession();
			session.removeAttribute("operatetruename");
			session.invalidate();
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}

		private void medicalhistroy(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			
			request.setCharacterEncoding("gbk");
			request.getRequestDispatcher("UserMedicalHistroy.jsp").forward(request, response);
		}
	

		//��ת�������û���Ϣ����
	private void modifyUser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		OperateServlet user=new OperateServlet();
		String id1=request.getParameter("id");
		String id = new String(id1.getBytes("ISO-8859-1"),"gbk"); 
		
		Map map=user.selescid(id);
		request.setAttribute("map", map);
		request.getRequestDispatcher("updateUser.jsp").forward(request, response);
		
	}
	
	//ɾ���û�������Ϣ
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		OperateServlet user=new OperateServlet();
		String id1=request.getParameter("id");
		String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
		System.out.println("id:"+id);
		
		if (user.deleteUser(id))
		{
			//request.getRequestDispatcher("LookUserInf.jsp").forward(request, response);
			lookAllUsers(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
	}
	
	
	//ɾ���û�������Ϣ
	private void deleteCheckUser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		OperateServlet user=new OperateServlet();
		String id1=request.getParameter("id");
		String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
		System.out.println("id:"+id);
		
		if (user.deleteCheckUser(id))
		{
			request.getRequestDispatcher("LookUserInf.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
	}
	
	
	
	//ɾ���û��侵��ϢdeletePeijingxinxiUser
	private void deletePeijingxinxiUser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		OperateServlet user=new OperateServlet();
		String id1=request.getParameter("id");
		String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
		System.out.println("id:"+id);
		
		if (user.deletepeijingxinxiUser(id))
		{
			request.getRequestDispatcher("LookUserInf.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
	}
	
	
	
	
	//�鿴�����û���Ϣ  ��id������
		private void lookAllUsers(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			List list=user.lookAllUser();
			request.setAttribute("list", list);
			request.getRequestDispatcher("lookAllUsers.jsp").forward(request, response);
			
		}
		
		//�鿴�����û���Ϣ  ������������
		private void LookAllUserOrderByName(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			List list=user.lookAllUserByName();
			request.setAttribute("list", list);
			request.getRequestDispatcher("lookAllUsers.jsp").forward(request, response);
			
		}
		
		//��ת���������Ϣ
	
		private void tiaoZhuanInputCheckInf(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id1=request.getParameter("id");
			String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
			Map map=user.selescid(id);
			request.setAttribute("map", map);
			request.getRequestDispatcher("updateUserOtherInf.jsp").forward(request, response);
			
		}
		
		
	//��ת���޸ļ������Ϣ
		private void modifyCheckUser(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id1=request.getParameter("id");
			String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
			Map map=user.selesccheck(id);
			request.setAttribute("map", map);
			request.getRequestDispatcher("updatecheckUser.jsp").forward(request, response);
			
			
		}
		
	
	//��ת���޸��侵��Ϣ
		private void modifypeijingxinxi(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id1=request.getParameter("id");
			String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
			Map map=user.selescpeijingxinxi(id);
			request.setAttribute("map", map);
			request.getRequestDispatcher("updatepeijingxinxi.jsp").forward(request, response);
			
			
		}
		
		private void getoneuser(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id1=request.getParameter("id");
			String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
			Map map=user.selescid(id);
			Map map1=user.selesccheck(id);
			Map map2=user.selescpeijingxinxi(id);
			request.setAttribute("map", map);
			request.setAttribute("map1", map1);
			request.setAttribute("map2", map2);
			request.getRequestDispatcher("LookOneUserinf.jsp").forward(request, response);
		}
		
		
		
	//ɾ�����й��ڵ�ԤԼdeletePartOrder
		private void deletePartOrder(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			
	   		GregorianCalendar time=new GregorianCalendar();
      		int year,month,date,hour,minute;
      		year=time.get((time.YEAR));
      		month=time.get((time.MONTH))+1;
      		date=time.get((time.DATE));
      		hour=time.get((time.HOUR))+1;
      		minute=time.get((time.MINUTE));
      		
			
			
			operateexit(request, response);
			
		}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");
		System.out.println("post:"+action);
		
		if (action.equals("operatelogin"))
		{
			operatelogin(request,response);
		}
		else if (action.equals("inputuserinformation"))
		{
			inputUserInformation(request,response);
		}
		else if (action.equals("lookuserinf"))
		{
			lookUserInf(request,response);
		}
		else if (action.equals("updateUser"))
		{
			updateUser(request, response);
		}
		else if (action.equals("updateUserOtherInf"))
		{
			updateUserOtherInf(request, response);
		}
		else if (action.equals("updatecheckUserInf"))
		{
			updatecheckUserInf(request, response);
		}
		else if (action.equals("peijingxinxi"))
		{
			peijingxinxi(request, response);
		}
		else if (action.equals("modifyUserPeijingxinxi"))
		{
			modifyUserPeijingxinxi(request, response);
		}
		else if (action.equals("updateOperateNP"))
		{
			updateOperateNP(request, response);
		}
	}
		
		
	
//����Ա��½
	private void operatelogin(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		OperateServlet admin=new OperateServlet();
		request.setCharacterEncoding("gbk");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		System.out.println("name"+name);
		
		if (admin.equaladmin(name, password))
		
		{
			HttpSession session=request.getSession();
			String status="operate";
			session.setAttribute("operatetruename", name);
			session.setAttribute("status", status);
			request.getRequestDispatcher("orderDayRemind.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('����Ա�˺Ż����������!');history.go(-1);</script>");
		
			
		}
	
	}
	
	
	
	//�����û���Ϣ
	
		private void inputUserInformation(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
			
		{
			OperateServlet user= new OperateServlet();
			request.setCharacterEncoding("gbk");
			String name=request.getParameter("name");
			String sex=request.getParameter("sex");
			String year=request.getParameter("year");
			String month=request.getParameter("month");
			String day=request.getParameter("day");
			String phone=request.getParameter("phone");
			String jzphone=request.getParameter("jzphone");
			String company=request.getParameter("company");
			String adress=request.getParameter("adress");
			String time=request.getParameter("time");
			String flag="n";
			String server="";
			
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			
			if (user.adduser(name, sex, year, month, day, phone, company, adress, jzphone, flag, server, time))
			{
				out.print("<script type='text/javascript'>alert('��ӳɹ�');history.go(-1);</script>");
			}
			else
			{
				out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
			}
			
			
			
		}
		
		
		//��ѯ��Ϣ
		private void lookUserInf(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
			
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user= new OperateServlet();
			
			String name=request.getParameter("name");
			List list=user.select(name);
			List list1=user.selectcheck(name);
			List list2=user.selectpj(name);
			System.out.println("list.size:"+list.size());
			System.out.println("list1.size:"+list1.size());
			System.out.println("list2.size:"+list2.size());
			
			if (list.size()!=0 || list1.size()!=0 || list2.size()!=0)
			{
				if (list.size()!=0)	{request.setAttribute("list", list);}
				if (list1.size()!=0)	{request.setAttribute("list1", list1);}
				if (list2.size()!=0)	{request.setAttribute("list2", list2);}
				request.getRequestDispatcher("LookUserInf.jsp").forward(request, response);
			}
			else  
			{
				response.setContentType("text/html;charset=GBK");
				PrintWriter out=response.getWriter();
				out.print("<script type='text/javascript'>alert('�Ҳ���û����Ӧ����Ϣ');history.go(-1);</script>");
			}
			
		}
		
		
		//�����û�������Ϣ
		private void updateUser(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String sex=request.getParameter("sex");
			String year=request.getParameter("year");
			String month=request.getParameter("month");
			String day=request.getParameter("day");
			String phone=request.getParameter("phone");
			String company=request.getParameter("company");
			String adress=request.getParameter("adress");
			
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			if(user.updateUser(id, name, sex, year, month, day, phone, company, adress))
			{
				out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
			}
			else
			{
				out.print("<script type='text/javascript'>alert('�޸�ʧ��');history.go(-1);</script>");
			}
		}
		
		
		
		
		//�����û��侵��Ϣ
		private void modifyUserPeijingxinxi(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			
			OperateServlet user=new OperateServlet();
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String time=request.getParameter("time");
			
			
			String VRNake=request.getParameter("VRNake");
			String VRSphere=request.getParameter("VRSphere");
			String VRCylinder=request.getParameter("VRCylinder");
			String VRAxis=request.getParameter("VRAxis");
			String VRPrism=request.getParameter("VRPrism");
			
			String VLNake=request.getParameter("VLNake");
			String VLSphere=request.getParameter("VLSphere");
			String VLCylinder=request.getParameter("VLCylinder");
			String VLAxis=request.getParameter("VLAxis");
			String VLPrism=request.getParameter("VLPrism");
			
			
			String RRNake=request.getParameter("RRNake");
			String RRSphere=request.getParameter("RRSphere");
			String RRCylinder=request.getParameter("RRCylinder");
			String RRAxis=request.getParameter("RRAxis");
			String RRPrism=request.getParameter("RRPrism");
			
			
			String RLNake=request.getParameter("RLNake");
			String RLSphere=request.getParameter("RLSphere");
			String RLCylinder=request.getParameter("RLCylinder");
			String RLAxis=request.getParameter("RLAxis");
			String RLPrism=request.getParameter("RLPrism");
			
			
			String VRBottom=request.getParameter("VRBottom");
			String VRPrism2=request.getParameter("VRPrism2");
			String VRBottom2=request.getParameter("VRBottom2");
			String VRFixed=request.getParameter("VRFixed");
			String VRComment=request.getParameter("VRComment");
			
			
			String VLBottom=request.getParameter("VLBottom");
			String VLPrism2=request.getParameter("VLPrism2");
			String VLBottom2=request.getParameter("VLBottom2");
			String VLFixed=request.getParameter("VLFixed");
			String VLComment=request.getParameter("VLComment");
			
			
			String RRBottom=request.getParameter("RRBottom");
			String RRPrism2=request.getParameter("RRPrism2");
			String RRBottom2=request.getParameter("RRBottom2");
			String RRFixed=request.getParameter("RRFixed");
			String RRComment=request.getParameter("RRComment");
			
			
			String RLBottom=request.getParameter("RLBottom");
			String RLPrism2=request.getParameter("RLPrism2");
			String RLBottom2=request.getParameter("RLBottom2");
			String RLFixed=request.getParameter("RLFixed");
			String RLComment=request.getParameter("RLComment");
			
			
			String glass=request.getParameter("glass");
			String glassNum=request.getParameter("glassNum");
			String glassPrice=request.getParameter("glassPrice");
			String mounting=request.getParameter("mounting");
			String mountingNum=request.getParameter("mountingNum");
			String mountingPrice=request.getParameter("mountingPrice");
			
			
			String allmountingPrice=request.getParameter("allmountingPrice");
			
			
			String optometrist=request.getParameter("optometrist");
			String decisionMaker=request.getParameter("decisionMaker");
			String trier=request.getParameter("trier");
			String receiver=request.getParameter("receiver");
		
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			
			if (user.updatepeijingUser(id,name,VRNake,VRSphere,VRCylinder,VRAxis,VRPrism,
					VLNake,VLSphere,VLCylinder,VLAxis,VLPrism,
                  RRNake,RRSphere,RRCylinder,RRAxis,RRPrism,RLNake,RLSphere,RLCylinder,RLAxis,RLPrism,VRBottom,VRPrism2,VRBottom2,VRFixed,VRComment,VLBottom,VLPrism2,VLBottom2,VLFixed,VLComment,RRBottom,RRPrism2,RRBottom2,RRFixed,RRComment,RLBottom,RLPrism2,RLBottom2,RLFixed,RLComment,glass,glassNum,glassPrice,mounting,mountingNum,mountingPrice,allmountingPrice,optometrist,decisionMaker,trier,receiver,time))
			{
				
				out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
			}
			else
			{
				
				out.print("<script type='text/javascript'>alert('�޸�ʧ��');history.go(-1);</script>");
			}
			
			
		}
		
		
		
		
		
		//�����û��������Ϣ
		private void updatecheckUserInf(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
			String[] afirstIll=new String[6];
			String[] afamilyHistory=new String[6];
			
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String time=request.getParameter("time");
			String firstIll[]=request.getParameterValues("firstIll");
			String familyHistory[]=request.getParameterValues("familyHistory");
			String posture=request.getParameter("posture");
			String LeftDiopter=request.getParameter("LeftDiopter");
			String RightDiopter=request.getParameter("RightDiopter");
			String LeftAxis=request.getParameter("LeftAxis");
			String RightAxis=request.getParameter("RightAxis");
			String LeftPD=request.getParameter("LeftPD");
			String RightPD=request.getParameter("RightPD");
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			
			for (int i=0;i<6;i++) {afirstIll[i]="";afamilyHistory[i]="";}
			if (firstIll.length>1){
				for (int i=0;i<firstIll.length-1;i++){afirstIll[i]=firstIll[i];}
			}
			
			if (familyHistory.length>1){
				for (int i=0;i<familyHistory.length-1;i++){afamilyHistory[i]=familyHistory[i];}
			}
			
			if (firstIll.length==1){
				for (int i=0;i<firstIll.length;i++){afirstIll[i]=firstIll[i];}
			}
			
			if (familyHistory.length==1){
				for (int i=0;i<familyHistory.length;i++){afamilyHistory[i]=familyHistory[i];}
			}
			
			
			if (user.updatecheckUser(id, name, afirstIll[0], afirstIll[1], afirstIll[2], afirstIll[3], afamilyHistory[0], afamilyHistory[1], afamilyHistory[2], afamilyHistory[3], posture, LeftDiopter, RightDiopter, LeftAxis, RightAxis, LeftPD, RightPD,time))
			{
				out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
			}
			else
			{
				out.print("<script type='text/javascript'>alert('�޸�ʧ��');history.go(-1);</script>");
			}

			
		}
		
		
		//��Ӽ������Ϣ
		private void updateUserOtherInf(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
		
			
			String[] afirstIll=new String[6];
			String[] afamilyHistory=new String[6];
			
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String firstIll[]=request.getParameterValues("firstIll");
			String familyHistory[]=request.getParameterValues("familyHistory");
			String posture=request.getParameter("posture");
			String LeftDiopter=request.getParameter("LeftDiopter");
			String RightDiopter=request.getParameter("RightDiopter");
			String LeftAxis=request.getParameter("LeftAxis");
			String RightAxis=request.getParameter("RightAxis");
			String LeftPD=request.getParameter("LeftPD");
			String RightPD=request.getParameter("RightPD");
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			
			for (int i=0;i<6;i++) {afirstIll[i]="";afamilyHistory[i]="";}
			if (firstIll.length>1){
				for (int i=0;i<firstIll.length-1;i++){afirstIll[i]=firstIll[i];}
			}
			
			if (familyHistory.length>1){
				for (int i=0;i<familyHistory.length-1;i++){afamilyHistory[i]=familyHistory[i];}
			}
			
			if (firstIll.length==1){
				for (int i=0;i<firstIll.length;i++){afirstIll[i]=firstIll[i];}
			}
			
			if (familyHistory.length==1){
				for (int i=0;i<familyHistory.length;i++){afamilyHistory[i]=familyHistory[i];}
			}
			
			
			if (user.addUserAfterInf(id, name, afirstIll[0], afirstIll[1], afirstIll[2], afirstIll[3], afamilyHistory[0], afamilyHistory[1], afamilyHistory[2], afamilyHistory[3], posture, LeftDiopter, RightDiopter, LeftAxis, RightAxis, LeftPD, RightPD))
			{
				
				Map map=user.selescid(id);
				request.setAttribute("map", map);
				request.getRequestDispatcher("peijingxinxi.jsp").forward(request, response);
				
			}
			else
			{
				out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
			}

		}
		
		
		
		//����侵ϵ��
		private void peijingxinxi(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			
			OperateServlet user=new OperateServlet();
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			
			String VRNake=request.getParameter("VRNake");
			String VRSphere=request.getParameter("VRSphere");
			String VRCylinder=request.getParameter("VRCylinder");
			String VRAxis=request.getParameter("VRAxis");
			String VRPrism=request.getParameter("VRPrism");
			
			String VLNake=request.getParameter("VLNake");
			String VLSphere=request.getParameter("VLSphere");
			String VLCylinder=request.getParameter("VLCylinder");
			String VLAxis=request.getParameter("VLAxis");
			String VLPrism=request.getParameter("VLPrism");
			
			
			String RRNake=request.getParameter("RRNake");
			String RRSphere=request.getParameter("RRSphere");
			String RRCylinder=request.getParameter("RRCylinder");
			String RRAxis=request.getParameter("RRAxis");
			String RRPrism=request.getParameter("RRPrism");
			
			
			String RLNake=request.getParameter("RLNake");
			String RLSphere=request.getParameter("RLSphere");
			String RLCylinder=request.getParameter("RLCylinder");
			String RLAxis=request.getParameter("RLAxis");
			String RLPrism=request.getParameter("RLPrism");
			
			
			String VRBottom=request.getParameter("VRBottom");
			String VRPrism2=request.getParameter("VRPrism2");
			String VRBottom2=request.getParameter("VRBottom2");
			String VRFixed=request.getParameter("VRFixed");
			String VRComment=request.getParameter("VRComment");
			
			
			String VLBottom=request.getParameter("VLBottom");
			String VLPrism2=request.getParameter("VLPrism2");
			String VLBottom2=request.getParameter("VLBottom2");
			String VLFixed=request.getParameter("VLFixed");
			String VLComment=request.getParameter("VLComment");
			
			
			String RRBottom=request.getParameter("RRBottom");
			String RRPrism2=request.getParameter("RRPrism2");
			String RRBottom2=request.getParameter("RRBottom2");
			String RRFixed=request.getParameter("RRFixed");
			String RRComment=request.getParameter("RRComment");
			
			
			String RLBottom=request.getParameter("RLBottom");
			String RLPrism2=request.getParameter("RLPrism2");
			String RLBottom2=request.getParameter("RLBottom2");
			String RLFixed=request.getParameter("RLFixed");
			String RLComment=request.getParameter("RLComment");
			
			
			String glass=request.getParameter("glass");
			String glassNum=request.getParameter("glassNum");
			String glassPrice=request.getParameter("glassPrice");
			String mounting=request.getParameter("mounting");
			String mountingNum=request.getParameter("mountingNum");
			String mountingPrice=request.getParameter("mountingPrice");
			
			
			String allmountingPrice=request.getParameter("allmountingPrice");
			
			
			String optometrist=request.getParameter("optometrist");
			String decisionMaker=request.getParameter("decisionMaker");
			String trier=request.getParameter("trier");
			String receiver=request.getParameter("receiver");
		
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			
			if (user.addpeijingxinxi(id,name,VRNake,VRSphere,VRCylinder,VRAxis,VRPrism,
					VLNake,VLSphere,VLCylinder,VLAxis,VLPrism,
                  RRNake,RRSphere,RRCylinder,RRAxis,RRPrism,RLNake,RLSphere,RLCylinder,RLAxis,RLPrism,VRBottom,VRPrism2,VRBottom2,VRFixed,VRComment,VLBottom,VLPrism2,VLBottom2,VLFixed,VLComment,RRBottom,RRPrism2,RRBottom2,RRFixed,RRComment,RLBottom,RLPrism2,RLBottom2,RLFixed,RLComment,glass,glassNum,glassPrice,mounting,mountingNum,mountingPrice,allmountingPrice,optometrist,decisionMaker,trier,receiver))
			{
				
				out.print("<script type='text/javascript'>alert('��ӳɹ�');history.go(-1);</script>");
			}
			else
			{
				
				out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
			}
			
			
			
			
			
		}
		
		
		
		
		//����Ա�޸ĸ�����ϢupdateOperateNP
		private void updateOperateNP(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
		{
			request.setCharacterEncoding("gbk");
			OperateServlet user=new OperateServlet();
			String oldname=request.getParameter("oldname");
			String newname=request.getParameter("newname");
			String oldpassword=request.getParameter("oldpassword");
			String newpassword=request.getParameter("newpassword");
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			int f=1;
			if (newpassword.equals(""))
			{
				f=0;
				out.print("<script type='text/javascript'>alert('�����벻��Ϊ��');history.go(-1);</script>");
			}
			
			
			if(f==1)
			{
				if (user.okOperate(oldname, oldpassword, newname, newpassword))
				{
					out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else
				{
					
					out.print("<script type='text/javascript'>alert('ԭ�������������ѱ�ע��');history.go(-1);</script>");
				}
			}
			
			
		}
		
		
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
