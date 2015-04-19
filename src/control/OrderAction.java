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

import servlet.OrderServlet;

public class OrderAction extends HttpServlet {

	
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
		if (action.equals("TZaddOrderTimeY"))
		{
			TZaddOrderTimeY(request, response);
		}
		else if (action.equals("LookAllOrder"))
		{
			LookAllOrder(request, response);
		}
		else if (action.equals("deleteorder"))
		{
			deleteorder(request, response);
		}
		
		
	}
	
	
	//跳转到预约页面
	private void TZaddOrderTimeY(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		
		request.setCharacterEncoding("gbk");
		OrderServlet user=new OrderServlet();
		String id1=request.getParameter("id");
		String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
		Map map=user.selectuser(id);
		request.setAttribute("map", map);
		request.getRequestDispatcher("orderAddTimeY.jsp").forward(request, response);
	}


	//查看所有预约的客户
	private void LookAllOrder(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		OrderServlet user=new OrderServlet();
		List list=user.getAllOrder();
		request.setAttribute("list", list);
		
//		String flag="0";
//		flag=(String)request.getParameter("exitFlag");
//		if (flag.equals("1"))
//		{
//			HttpSession session=request.getSession();
//			session.setAttribute("flag", flag);
//		}
		
		request.getRequestDispatcher("orderLookAll.jsp").forward(request, response);
		
		
		
	}

	//删除预约客户
	private void deleteorder(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		response.setCharacterEncoding("gbk");
		request.setCharacterEncoding("gbk");
		OrderServlet user=new OrderServlet();
		String name1=request.getParameter("name");
		String id1=request.getParameter("id");
		String year1=request.getParameter("year");
		String month1=request.getParameter("month");
		String day1=request.getParameter("day");
		String hour1=request.getParameter("hour");
		String minute1=request.getParameter("minute");
		String phone1=request.getParameter("phone");
		String work1=request.getParameter("work");
		
	
		String id = new String(id1.getBytes("ISO-8859-1"),"gbk");
		String name = new String(name1.getBytes("ISO-8859-1"),"gbk");
		String year = new String(year1.getBytes("ISO-8859-1"),"gbk");
		String month = new String(month1.getBytes("ISO-8859-1"),"gbk");
		String day = new String(day1.getBytes("ISO-8859-1"),"gbk");
		String hour = new String(hour1.getBytes("ISO-8859-1"),"gbk");
		String minute = new String(minute1.getBytes("ISO-8859-1"),"gbk");
		String phone = new String(phone1.getBytes("ISO-8859-1"),"gbk");
		String work = new String(work1.getBytes("ISO-8859-1"),"gbk");
		
		
		
		if (user.deleteorder(id, name, year, month, day, hour, minute, phone, work))
		{
			LookAllOrder(request, response);
		}else
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
		System.out.println("get:"+action);
		if (action.equals("serchuser"))
		{
			serchuser(request, response);
		}
		else if (action.equals("addOrderTimeY"))
		{
			addOrderTimeY(request, response);
		}
		else if (action.equals("addUserTimeNo"))
		{
			
		}
	}

	
	
	
	
	//跳转至添加预约界面
	private void serchuser(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		OrderServlet user=new OrderServlet();
		String name=request.getParameter("nameORid");
		List list=user.serchuser(name);
		int flag=list.size();
		if (flag>0)
		{
			request.setAttribute("list", list);
			request.getRequestDispatcher("orderAddUse.jsp").forward(request, response);
		}else 
		{
			HttpSession session=request.getSession();
			session.setAttribute("ordername", name);
			request.getRequestDispatcher("orderAddUseNo.jsp").forward(request, response);
		}
	}
	
	
	
	//添加客户的预约信息addOrderTime Y/N
	private void addOrderTimeY(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException
	{
		response.setCharacterEncoding("gbk");
		request.setCharacterEncoding("gbk");
		OrderServlet user=new OrderServlet();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		String day=request.getParameter("day");
		String minute=request.getParameter("minute");
		String hour=request.getParameter("hour");
		String phone=request.getParameter("phone");
		String work=request.getParameter("work");
		
		
		if (month.length()==1){month="0"+month;}
		if (day.length()==1){day="0"+day;}
		if (hour.length()==1){hour="0"+hour;}
		if (minute.length()==1){minute="0"+minute;}
		String times=year+month+day+hour+minute;
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		
		if (user.addorder(id, name, year, month, day, hour, minute, phone, work,times))
		{
			out.print("<script type='text/javascript'>alert('预约成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('预约失败,所有空必须填');history.go(-1);</script>");
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
