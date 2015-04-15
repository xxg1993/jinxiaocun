package servlet;
import java.util.Map;
import jdbc.JDBConnection;
import java.util.List;

public class AdminServlet {
	
	
	//管理员登录
	public boolean equaladmin(String name,String password)
	{
		try
		{
			String sqlstr="select * from admin where name=? and password=?";
			Map map=JDBConnection.queryForMap(sqlstr, new String[]{name,password});
			
		}catch(Exception e)
		{
			return false;
		}
		
		return true;
	}
	
	
	//添加新的操作员
	public boolean addOpearte(String name,String password)
	{
		String sqlstr="insert into operate(name,password) values (?,?)";
		if (JDBConnection.update(sqlstr, new String[]{name,password}))
			return true;
		else
			return false;
	}
	
	
	
	//添加新的售后员
	public boolean addServer(String name,String password)
	{
		String sqlstr="insert into servicer(name,password) values (?,?)";
		if (JDBConnection.update(sqlstr, new String[]{name,password}))
			return true;
		else
			return false;
	}
	
	
	//添加新的管理员
	public boolean addAdmin(String name,String password)
	{
		String sqlstr="insert into admin(name,password) values (?,?)";
		if (JDBConnection.update(sqlstr, new String[]{name,password}))
			return true;
		else
			return false;
	}
	
	
	
	
	//查看所有操作员
	public List LookAllOperate()
	{
		String sqlstr="select * from operate";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	//查看所有售后员
	public List LookAllOserver()
	{
		String sqlstr="select * from servicer";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	
	//查看所有管理员
	public List LookAllAdmin()
	{
		String sqlstr="select name from admin";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	
	
	
	
	//删除操作员
	public boolean deleteoperate(String name)
	{
		String strsql="delete from operate where name=?";
		if (JDBConnection.update(strsql, new String[]{name}))
			return true;
		else
			return false;
	}
	
	//删除售后员
	public boolean deleteserver(String name)
	{
		String strsql="delete from servicer where name=?";
		if (JDBConnection.update(strsql, new String[]{name}))
			return true;
		else
			return false;
	}
	
	
	
	//调出操作员信息
	public Map selectOperate(String name)
	{
		Map map=null;
		String sqlstr="select * from operate where name=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{name});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	
	//调出售后员信息
	public Map selectServer(String name)
	{
		Map map=null;
		String sqlstr="select * from servicer where name=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{name});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	
	//提取管理员信息
	public Map selectAdmin(String name)
	{
		Map map=null;
		String sqlstr="select * from admin where name=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{name});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	
	
	
	
	
	//修改操作员个人信息
	public boolean updataOperatexinxi(String oldname,String newname,String password)
	{
		
		String sqlstr2="delete from operate where name=?";
		JDBConnection.update(sqlstr2, new String[]{oldname});
		
		String strsql1="insert into operate(name,password) values (?,?)";
		if (JDBConnection.update(strsql1, new String[]{newname,password}))
			return true;
		else
			return false;
		
	}
	
	
	//修改售后员个人信息
	public boolean updataServerxinxi(String oldname,String newname,String password)
	{
		
		String sqlstr2="delete from servicer where name=?";
		JDBConnection.update(sqlstr2, new String[]{oldname});
		
		String strsql1="insert into servicer(name,password) values (?,?)";
		if (JDBConnection.update(strsql1, new String[]{newname,password}))
			return true;
		else
			return false;
		
	}
	
	
	
	//修改管理员个人信息
	public boolean updataAdminxinxi(String oldname,String newname,String password)
	{
		
		String sqlstr2="delete from admin where name=?";
		JDBConnection.update(sqlstr2, new String[]{oldname});
		
		String strsql1="insert into admin(name,password) values (?,?)";
		if (JDBConnection.update(strsql1, new String[]{newname,password}))
			return true;
		else
			return false;
		
	}

}
