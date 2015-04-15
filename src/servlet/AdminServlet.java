package servlet;
import java.util.Map;
import jdbc.JDBConnection;
import java.util.List;

public class AdminServlet {
	
	
	//����Ա��¼
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
	
	
	//����µĲ���Ա
	public boolean addOpearte(String name,String password)
	{
		String sqlstr="insert into operate(name,password) values (?,?)";
		if (JDBConnection.update(sqlstr, new String[]{name,password}))
			return true;
		else
			return false;
	}
	
	
	
	//����µ��ۺ�Ա
	public boolean addServer(String name,String password)
	{
		String sqlstr="insert into servicer(name,password) values (?,?)";
		if (JDBConnection.update(sqlstr, new String[]{name,password}))
			return true;
		else
			return false;
	}
	
	
	//����µĹ���Ա
	public boolean addAdmin(String name,String password)
	{
		String sqlstr="insert into admin(name,password) values (?,?)";
		if (JDBConnection.update(sqlstr, new String[]{name,password}))
			return true;
		else
			return false;
	}
	
	
	
	
	//�鿴���в���Ա
	public List LookAllOperate()
	{
		String sqlstr="select * from operate";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	//�鿴�����ۺ�Ա
	public List LookAllOserver()
	{
		String sqlstr="select * from servicer";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	
	//�鿴���й���Ա
	public List LookAllAdmin()
	{
		String sqlstr="select name from admin";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	
	
	
	
	//ɾ������Ա
	public boolean deleteoperate(String name)
	{
		String strsql="delete from operate where name=?";
		if (JDBConnection.update(strsql, new String[]{name}))
			return true;
		else
			return false;
	}
	
	//ɾ���ۺ�Ա
	public boolean deleteserver(String name)
	{
		String strsql="delete from servicer where name=?";
		if (JDBConnection.update(strsql, new String[]{name}))
			return true;
		else
			return false;
	}
	
	
	
	//��������Ա��Ϣ
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
	
	
	
	//�����ۺ�Ա��Ϣ
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
	
	
	
	//��ȡ����Ա��Ϣ
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
	
	
	
	
	
	
	
	//�޸Ĳ���Ա������Ϣ
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
	
	
	//�޸��ۺ�Ա������Ϣ
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
	
	
	
	//�޸Ĺ���Ա������Ϣ
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
