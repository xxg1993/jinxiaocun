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
import servlet.ServerServlet;

public class ServerAction extends HttpServlet {

	String ff="";

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

		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");
		System.out.println("get:"+action);
		
		if (action.equals("returnindex"))
		{
			returnindex(request,response);
		}
		else if (action.equals("operateexit"))
		{
			operateexit(request,response);
		}else if (action.equals("updateserver"))
		{
			updateserver(request, response);
		}
		else if (action.equals("serverLookAllUser") || action.equals("serverLookYesUser") || action.equals("serverLookNoUser"))
		{
			ff=action;
			serverLookUser(request, response);
		}
		else if (action.equals("getoneuser"))
		{
			getoneuser(request, response);
		}
		else if (action.equals("TZinsertInf"))
		{
			TZinsertInf(request, response);
		}
		else if (action.equals("deleteUser"))
		{
			deleteUser(request, response);
		}
	}
	
	//返回首页
	private void returnindex(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String servername=(String)session.getAttribute("servername");
		request.getRequestDispatcher("serverview.jsp").forward(request, response);
	}
	
	
	//售后员退出
	private void operateexit(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		session.removeAttribute("servername");
		session.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);
		return;
	}
	
	
	
	//修改售后员信息
	private void updateserver(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String servername=(String)session.getAttribute("servername");
		ServerServlet user=new ServerServlet();
		Map map=user.selectServer(servername);
		request.setAttribute("map", map);
		request.getRequestDispatcher("updateserver.jsp").forward(request, response);
	}
	
	
	
	//查看客户随访记录
	private void serverLookUser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		ServerServlet user=new ServerServlet();
		int f=0;
		
		
		if (ff.equals("serverLookAllUser"))
		{
			f=0;
		}
		else if (ff.equals("serverLookYesUser"))
		{
			f=1;
			
		}else if (ff.equals("serverLookNoUser"))
		{
			f=2;
		}
	
		List list=user.LookUsers(f);
		request.setAttribute("list", list);
		request.getRequestDispatcher("serverlookAllUsers.jsp").forward(request, response);
		
		
		
	}
	

	
	
	//查看单人的记录getoneuser
	private void getoneuser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		ServerServlet user=new ServerServlet();
		String id=request.getParameter("id");
		Map map=user.selescid(id);
		request.setAttribute("map", map);
		request.getRequestDispatcher("serverLookOneUserinf.jsp").forward(request, response);
	}
	
	
	
	//添加随访记录insertInf
	private void TZinsertInf(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		ServerServlet user=new ServerServlet();
		String id=request.getParameter("id");
		Map map=user.selescid(id);
		request.setAttribute("map", map);
		request.getRequestDispatcher("serverInsertInf.jsp").forward(request, response);
		
		
	}
	
	
	//删除客户随访信息deleteUser
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		ServerServlet user=new ServerServlet();
		String id=request.getParameter("id");
		System.out.println("id:"+id);
		
		if (user.deleteServerUserVisit(id))
		{
			//request.getRequestDispatcher("LookUserInf.jsp").forward(request, response);
			serverLookUser(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('删除失败');history.go(-1);</script>");
		}
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
		
		if (action.equals("login"))
		{
			login(request,response);
		}else if (action.equals("updateserverNP"))
		{
			updateserverNP(request, response);
		}
		else if (action.equals("updateUAfterSale"))
		{
			updateUAfterSale(request, response);
		}
	}
	
	
	//售后员登陆
	private void login(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		ServerServlet admin=new ServerServlet();
		request.setCharacterEncoding("gbk");
		String name=request.getParameter("name");
		String status="server";
		String password=request.getParameter("password");
		System.out.println("name"+name);
		
		if (admin.login(name, password))
		
		{
			HttpSession session=request.getSession();
			session.setAttribute("servername", name);
			session.setAttribute("status", status);
			request.getRequestDispatcher("serverview.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('售货员或者密码错误!');history.go(-1);</script>");
		
			
		}
		
	}
	
	
	
	//操作员修改个人信息updateOperateNP
	private void updateserverNP(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		ServerServlet user=new ServerServlet();
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
			out.print("<script type='text/javascript'>alert('新密码不能为空');history.go(-1);</script>");
		}
		
		
		if(f==1)
		{
			if (user.okOperate(oldname, oldpassword, newname, newpassword))
			{
				out.print("<script type='text/javascript'>alert('修改成功');history.go(-1);</script>");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else
			{
				
				out.print("<script type='text/javascript'>alert('原密码错误或名字已被注册');history.go(-1);</script>");
			}
		}
		
		
	}
	
	
	//修改随访信息updateUAfterSale
	private void updateUAfterSale(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException 
	{
		request.setCharacterEncoding("gbk");
		ServerServlet user=new ServerServlet();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String time=request.getParameter("time");
		String feel=request.getParameter("feel");
		String advise=request.getParameter("advise");
		String supervise=request.getParameter("supervise");
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.addServerUserVisit(id, name, time, feel, supervise, advise))
		{
			
			out.print("<script type='text/javascript'>alert('添加成功');history.go(-1);</script>");
		}
		else
		{
			
			out.print("<script type='text/javascript'>alert('添加失败');history.go(-1);</script>");
		}
		
		
	}
	
	

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	

}
