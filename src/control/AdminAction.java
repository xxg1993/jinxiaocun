package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.AdminServlet;
import servlet.OperateServlet;

public class AdminAction extends HttpServlet {



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
		if (action.equals("adminexit"))
		{
			adminexit(request, response);
		}
		else if (action.equals("returnindex"))
		{
			returnindex(request, response);
		}
		else if (action.equals("lookalloperate"))
		{
			lookalloperate(request, response);
		}
		else if (action.equals("executeoperate"))
		{
			executeoperate(request, response);
		}
		else if (action.equals("skipmodifyoperate"))
		{
			skipmodifyoperate(request, response);
		}
		else if (action.equals("lookallserver"))
		{
			lookallserver(request, response);
		}
		else if (action.equals("lookalladmin"))
		{
			lookalladmin(request, response);
		}
		else if (action.equals("executeserver"))
		{
			executeserver(request, response);
		}
		else if (action.equals("skipmodifyserver"))
		{
			skipmodifyserver(request, response);
		}
		else if (action.equals("skipmodifyadmin"))
		{
			skipmodifyadmin(request, response);
		}
        
	}
	
	
	//������ҳ��
	private void returnindex(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String admintruename=(String)session.getAttribute("admintruename");
		request.getRequestDispatcher("adminview.jsp").forward(request, response);
	}
	
	//����Ա�˳�
	private void adminexit(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		session.removeAttribute("admintruename");
		session.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);
		return;
		
	}
	
	
	//�鿴���в���Աlookalloperate
	private void lookalloperate(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		List list=user.LookAllOperate();
		request.setAttribute("list", list);
		request.getRequestDispatcher("adminlookalloperate.jsp").forward(request, response);
		
	}
	
	//�鿴�����ۺ���Աlookallserver
	private void lookallserver(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		List list=user.LookAllOserver();
		request.setAttribute("list", list);
		request.getRequestDispatcher("adminlookallserver.jsp").forward(request, response);
		
	}
	
	//�鿴���й�����Աlookalladmin
	private void lookalladmin(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		List list=user.LookAllAdmin();
		request.setAttribute("list", list);
		request.getRequestDispatcher("adminlookalladmin.jsp").forward(request, response);
		
	}
	
	
	
	//ɾ������Աexecuteoperate
	private void executeoperate(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name1=request.getParameter("name");
		String name = new String(name1.getBytes("ISO-8859-1"),"gbk"); 
		
		System.out.println("name:"+name);
		
		if (user.deleteoperate(name))
		{
			//request.getRequestDispatcher("adminlookalloperate.jsp").forward(request, response);
			lookalloperate(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
		
		
	}
	
	
	//ɾ���ۺ�Աexecuteserver
	private void executeserver(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name1=request.getParameter("name");
		String name = new String(name1.getBytes("ISO-8859-1"),"gbk"); 
		System.out.println("name:"+name);
		
		if (user.deleteserver(name))
		{
			//request.getRequestDispatcher("adminlookalloperate.jsp").forward(request, response);
			lookallserver(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
		
		
	}
	
	

	//�޸Ĳ���Ա����Ϣskipmodifyoperate
	private void skipmodifyoperate(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name1=request.getParameter("name");
		String name = new String(name1.getBytes("ISO-8859-1"),"gbk"); 
		Map map=user.selectOperate(name);
		request.setAttribute("map", map);
		request.getRequestDispatcher("adminupdateoperate.jsp").forward(request, response);
		
	}
	
	
	
	//�޸Ĳ���Ա����Ϣskipmodifyserver
	private void skipmodifyserver(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name1=request.getParameter("name");
		String name = new String(name1.getBytes("ISO-8859-1"),"gbk"); 
		Map map=user.selectServer(name);
		request.setAttribute("map", map);
		request.getRequestDispatcher("adminupdateserver.jsp").forward(request, response);
		
	}
	
	//�޸Ĺ���Ա����Ϣskipmodifyadmin
	//�޸Ĳ���Ա��Ϣ
	private void skipmodifyadmin(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String admintruename=(String)session.getAttribute("admintruename");
		AdminServlet user=new AdminServlet();
		Map map=user.selectAdmin(admintruename);
		request.setAttribute("map", map);
		request.getRequestDispatcher("adminupdateadmin.jsp").forward(request, response);
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
		
		if (action.equals("adminlogin"))
		{
			adminlogin(request,response);
		}
		else if (action.equals("adminlookuserinf"))
		{
			adminlookUserInf(request,response);
		}
		else if (action.equals("addoperate"))
		{
			addoperate(request,response);
		}
		else if (action.equals("addserver"))
		{
			addserver(request,response);
		}
		else if (action.equals("addadmin"))
		{
			addadmin(request,response);
		}
		else if (action.equals("updateOPxinxi"))
		{
			updateOPxinxi(request,response);
		}
		else if (action.equals("updateSExinxi"))
		{
			updateSExinxi(request,response);
		}
		else if (action.equals("updateADxinxi"))
		{
			updateADxinxi(request,response);
		}
	}

	
	
	//����Ա��½
	private void adminlogin(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		AdminServlet admin=new AdminServlet();
		request.setCharacterEncoding("gbk");
		String name=request.getParameter("adminname");
		String status="admin";
		String password=request.getParameter("adminpassword");
		System.out.println("adminname"+name);
		
		if (admin.equaladmin(name, password))
		
		{
			HttpSession session=request.getSession();
			session.setAttribute("admintruename", name);
			session.setAttribute("status", status);
	
			request.getRequestDispatcher("adminview.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('����Ա�����������!');history.go(-1);</script>");
		
			
		}
		
	}
	
	
	
	//����µĲ���Աaddoperate
	private void addoperate(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.addOpearte(name, password))
		{
			
			out.print("<script type='text/javascript'>alert('��ӳɹ�');history.go(-1);</script>");
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
		}
			
	}
	
	
	
	
	//����µ��ۺ�Աaddserver
	private void addserver(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.addServer(name, password))
		{
			
			out.print("<script type='text/javascript'>alert('��ӳɹ�');history.go(-1);</script>");
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
		}
			
	}
	
	
	
	//����µĹ���Աaddadmin
	private void addadmin(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.addAdmin(name, password))
		{
			
			out.print("<script type='text/javascript'>alert('��ӳɹ�');history.go(-1);</script>");
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('���ʧ��');history.go(-1);</script>");
		}
			
	}
	
	
	
	
	
	
	//��ѯ�����û���Ϣ
	private void adminlookUserInf(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	
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
			request.getRequestDispatcher("adminLookUserInf.jsp").forward(request, response);
		}
		else  
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('�Ҳ���û����Ӧ����Ϣ');history.go(-1);</script>");
		}
		
	}
	
	
	//�޸Ĳ���Ա��ϢupdateOPxinxi
	private void updateOPxinxi(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String oldname=request.getParameter("oldname");
		String newname=request.getParameter("newname");
		String password=request.getParameter("password");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.updataOperatexinxi(oldname, newname, password))
		{
			out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
			//request.getRequestDispatcher("adminview.jsp").forward(request, response);
			lookalloperate(request,response);
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('�����ѱ�ע��');history.go(-1);</script>");
		}
		
	}
	
	
	
	//�޸��ۺ�Ա��ϢupdateSExinxi
	private void updateSExinxi(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String oldname=request.getParameter("oldname");
		String newname=request.getParameter("newname");
		String password=request.getParameter("password");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.updataServerxinxi(oldname, newname, password))
		{
			out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
			//request.getRequestDispatcher("adminview.jsp").forward(request, response);
			lookallserver(request,response);
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('�����ѱ�ע��');history.go(-1);</script>");
		}
		
	}
	
	
	
	//�޸Ĺ���Ա��ϢupdateADxinxi
	private void updateADxinxi(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		AdminServlet user=new AdminServlet();
		String oldname=request.getParameter("oldname");
		String newname=request.getParameter("newname");
		String password=request.getParameter("password");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.updataAdminxinxi(oldname, newname, password))
		{
			out.print("<script type='text/javascript'>alert('�޸ĳɹ�');history.go(-1);</script>");
			//request.getRequestDispatcher("adminview.jsp").forward(request, response);
			//lookallserver(request,response);
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('�����ѱ�ע��');history.go(-1);</script>");
		}
		
	}

	

}
