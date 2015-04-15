package servlet;

import java.util.Map;
import java.util.List;
import jdbc.JDBConnection;

public class ServerServlet {

	//�ۺ�Ա��½
	public boolean login(String name,String password)
	{
		try
		{
			String sqlstr="select * from servicer where name=? and password=?";
			Map map=JDBConnection.queryForMap(sqlstr, new String[]{name,password});
			
		}catch(Exception e)
		{
			return false;
		}
		
		return true;
	}
	
	
	
	//��ѡ���ۺ�Ա
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
	
	
	//�޸��ۺ�Ա��Ϣ
	public boolean okOperate(String oldname,String oldpassword,String newname,String newpassword)
	{
		String strsql="update servicer set name=?,password=? where name=? and password=?";
		if (JDBConnection.update(strsql, new String[]{newname,newpassword,oldname,oldpassword}))
			return true;
		else
			return false;
		
	}
	
	
	public List LookUsers(int f)
	{
		String sqlstr;
		
		sqlstr="select * from users";
		List list=JDBConnection.queryForList(sqlstr, null);
		if (f==1)
		{
			sqlstr="select * from users where flag=?";
			String ff="y";
			list=JDBConnection.queryForList(sqlstr, new String[]{ff});
		}
		else if (f==2)
		{
			sqlstr="select * from users where flag=?";
			String ff="n";
			list=JDBConnection.queryForList(sqlstr, new String[]{ff});
		}
		return list;
	}
	
	
	//ͨ��idѡ���û�������Ϣ
	public Map selescid(String id)
	{
		Map map=null;
		String sqlstr="select * from interview where id=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{id});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	//����û���ú���Ϣ
	public boolean addServerUserVisit(String id,String name,String time,String feel,String supervise,String advise)
	{
		String sqlstr="update users set flag=? where id=?";
		String f="y";
		JDBConnection.update(sqlstr,new String[]{f,id});
		
		String sqlstr1="update interview set time=?,feel=?,supervise=?,advise=? where id=?";
		if (JDBConnection.update(sqlstr1,new String[]{time,feel,supervise,advise,id}))
			return true;
		else
			return false;
	}
	
	
	
	//ɾ���û������Ϣ
	public boolean deleteServerUserVisit(String id)
	{
		String sqlstr="update users set flag=? where id=?";
		String f="n";
		JDBConnection.update(sqlstr,new String[]{f,id});
		
		String sqlstr1="update interview set time=?,feel=?,supervise=?,advise=? where id=?";
		if (JDBConnection.update(sqlstr1,new String[]{"","","","",id}))
			return true;
		else
			return false;
	}
	
	
}
