package servlet;

import java.util.Map;
import jdbc.JDBConnection;
import java.util.List;

public class OrderServlet {
	
	
	//获得所有客户列表
	public List getAllOrder()
	{
		String sqlstr="select * from orders order by times asc";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	
	//添加预约客户
	public boolean addorder(String id,String name,String year,String month,String day,String hour,String minute,String phone,String work,String times)
	{
		String sqlstr="insert into orders(id,name,year,month,day,hour,minute,phone,work,times) values (?,?,?,?,?,?,?,?,?,?)";
		if (JDBConnection.update(sqlstr, new String[]{id,name,year,month,day,hour,minute,phone,work,times}))
			return true;
		else
			return false;
	}
	

	//得到预约者信息
	public Map selectuser(String id)
	{
		Map map=null;
		String sqlstr="select * from users where id=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{id});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	//查找已注册客户信息
	public List serchuser(String name)
	{
		List list=JDBConnection.queryForList("select *from users where name=? or id=?",new String[]{name,name});
		return list;
	}
	
	
	//删除预约客户
	public boolean deleteorder(String id,String name,String year,String month,String day,String hour,String minute,String phone,String work)
	{
		String strsql="delete from orders where id=? and name=? and year=? and month=? and day=? and hour=? and minute=? and phone=? and work=?";
		if (JDBConnection.update(strsql, new String[]{id,name,year,month,day,hour,minute,phone,work}))
			return true;
		else
			return false;
	}

}
