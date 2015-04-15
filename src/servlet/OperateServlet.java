package servlet;

import java.util.Map;
import jdbc.JDBConnection;
import java.util.List;

public class OperateServlet {

	
	//�жϲ������˺�����
	public boolean equaladmin(String name,String password)
	{
		try
		{
			String sqlstr="select * from operate where name=? and password=?";
			Map map=JDBConnection.queryForMap(sqlstr, new String[]{name,password});
			
		}catch(Exception e)
		{
			return false;
		}
		
		return true;
	}
	
	
	
	//�ж�id���Ƿ�����
	public boolean ok(int xx)
	{
		try
		{
			String idu=Integer.toString(xx);
			String sqlstr2="select * from users where id=?";
			Map map=JDBConnection.queryForMap(sqlstr2, new String[]{idu});
		}catch(Exception e)
		{
			return false;
		}
		return true;
	}
	
	
	//����û�������Ϣ
	public boolean adduser(String name,String sex,String year,String month,String day,String phone,String company,String adress,String jzphone,String flag,String server)
	{
		int i;
		i=1;
		while (ok(i))
		{
			i=i+1;
		}
		
		String id=Integer.toString(i);
		//��Ӽ����Ϣ
		String sqlstr2="insert into usersafterinf(id,name,firstill1,firstill2,firstill3,firstill4,familyhistory1,familyhistory2,familyhistory3,familyhistory4,posture,leftdiopter,rightdiopter,leftaxis,rightaxis,leftpd,rightpd) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		JDBConnection.update(sqlstr2,new String[]{id,name,"", "", "", "","", "", "", "", "", "", "", "", "", "", ""});
		
		//����侵��Ϣ
		String sqlstr3="insert into peijingxinxi(id,name,vrnake,vrsphere,vrcylinder,vraxis,vrprism,vlnake,vlsphere," +
		"vlcylinder,vlaxis,vlprism,rrnake,rrsphere,rrcylinder,rraxis,rrprism,rlnake,rlsphere," +
		"rlcylinder,rlaxis,rlprism,vrbottom,vrprism2,vrbottom2,vrfixed,vrcomment,vlbottom,vlprism2," +
		"vlbottom2,vlfixed,vlcomment,rrbottom,rrprism2,rrbottom2,rrfixed,rrcomment,rlbottom,rlprism2," +
		"rlbottom2,rlfixed,rlcomment,glass,glassnum,glassprice,mounting,mountingnum,mountingprice," +
		"allmountingprice,optometrist,decisionmaker,trier,receiver) values (?,?,?,?,?,?,?,?,?,?,?,?,?," +
		"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		JDBConnection.update(sqlstr3,new String[]{id,name,"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""});
		
		
		//������ÿ���Ϣ
		String sqlstr4="insert into interview(id,name,time,feel,supervise,advise) values (?,?,?,?,?,?)";
		JDBConnection.update(sqlstr4,new String[]{id,name,"","","",""});
		
		if (JDBConnection.update("insert into users(id,name,sex,year,month,day,phone,jzphone,company,adress,flag,server) values (?,?,?,?,?,?,?,?,?,?,?,?)", new String[]{id,name,sex,year,month,day,phone,jzphone,company,adress,flag,server}))
		{
			
			
			return true;
		}
		else
			return false;
	}
	
	//����û�������Ϣ
	public boolean addUserAfterInf(String id,String name,String firstill1,String firstill2,String firstill3,String firstill4,String familyhistory1,String familyhistory2,String familyhistory3,String familyhistory4,String posture,String leftdiopter,String rightdiopter,String leftaxis,String rightaxis,String leftpd,String rightpd)
	{
		String sqlstr="insert into usersafterinf(id,name,firstill1,firstill2,firstill3,firstill4,familyhistory1,familyhistory2,familyhistory3,familyhistory4,posture,leftdiopter,rightdiopter,leftaxis,rightaxis,leftpd,rightpd) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		if (JDBConnection.update(sqlstr,new String[]{id,name,firstill1,firstill2,firstill3,firstill4,familyhistory1,familyhistory2,familyhistory3,familyhistory4,posture,leftdiopter,rightdiopter,leftaxis,rightaxis,leftpd,rightpd}))
			return true;
		else
			return false;
	}
	
	

	
	
	
	//��ѯ�����û�������Ϣ
	public List select(String name)
	{
		List list=JDBConnection.queryForList("select *from users where name=? or id=?",new String[]{name,name});
		return list;
	}
	
	//��ѯ�����û��������Ϣ
	public List selectcheck(String name)
	{
		List list=JDBConnection.queryForList("select *from usersafterinf where name=? or id=?",new String[]{name,name});
		return list;
	}
	
	
	//��ѯ�����û��侵��Ϣ
	public List selectpj(String name)
	{
		List list=JDBConnection.queryForList("select *from peijingxinxi where name=? or id=?",new String[]{name,name});
		return list;
	}
	
	
	//ͨ��idѡ���û����޸���Ϣ
	public Map selescid(String id)
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
	
	
	
	//��ȡ�û��������Ϣ
	public Map selesccheck(String id)
	{
		Map map=null;
		String sqlstr="select * from usersafterinf where id=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{id});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	//��ȡ�û��侵��Ϣ
	public Map selescpeijingxinxi(String id)
	{
		Map map=null;
		String sqlstr="select * from peijingxinxi where id=?";
		try
		{
			map=JDBConnection.queryForMap(sqlstr, new String[]{id});
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	
	//��ȡ����Ա��Ϣ
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
	
	
	
	//�����û�������Ϣ
	public boolean updateUser(String id, String name,String sex,String year,String month,String day,String phone,String company,String adress)
	{
		String sqlstr="update users set name=?,sex=?,year=?,month=?,day=?,phone=?,company=?,adress=? where id=?";
		if (JDBConnection.update(sqlstr, new String[]{name,sex,year,month,day,phone,company,adress,id}))
		
			return true;
		else 
			return false;
	}
	
	
	
	//�����û��������Ϣ
	public boolean updatecheckUser(String id,String name,String firstill1,String firstill2,String firstill3,String firstill4,String familyhistory1,String familyhistory2,String familyhistory3,String familyhistory4,String posture,String leftdiopter,String rightdiopter,String leftaxis,String rightaxis,String leftpd,String rightpd)
	{
		String sqlstr="update usersafterinf set name=?,firstill1=?,firstill2=?,firstill3=?,firstill4=?,familyhistory1=?,familyhistory2=?,familyhistory3=?,familyhistory4=?,posture=?,leftdiopter=?,rightdiopter=?,leftaxis=?,rightaxis=?,leftpd=?,rightpd=? where id=?";
		if (JDBConnection.update(sqlstr,new String[]{name,firstill1,firstill2,firstill3,firstill4,familyhistory1,familyhistory2,familyhistory3,familyhistory4,posture,leftdiopter,rightdiopter,leftaxis,rightaxis,leftpd,rightpd,id}))
			return true;
		else
			return false;
	}
	
	//�����û��侵��Ϣ
	public boolean updatepeijingUser(String id,String name,String vrnake,
			String vrsphere,String vrcylinder,String vraxis,String vrprism,String vlnake,
			String vlsphere,String vlcylinder,String vlaxis,String vlprism,String rrnake,
			String rrsphere,String rrcylinder,String rraxis,String rrprism,String rlnake,
			String rlsphere,String rlcylinder,String rlaxis,String rlprism,String vrbottom,
			String vrprism2,String vrbottom2,String vrfixed,String vrcomment,String vlbottom,
			String vlprism2,String vlbottom2,String vlfixed,String vlcomment,String rrbottom,
			String rrprism2,String rrbottom2,String rrfixed,String rrcomment,String rlbottom,
			String rlprism2,String rlbottom2,String rlfixed,String rlcomment,String glass,
			String glassnum,String glassprice,String mounting,String mountingnum,String mountingprice,
			String allmountingprice,String optometrist,String decisionmaker,String trier,String receiver)
	{
		String sqlstr="update peijingxinxi set name=?,vrnake=?,vrsphere=?,vrcylinder=?,vraxis=?,vrprism=?,vlnake=?,vlsphere=?,vlcylinder=?,vlaxis=?,vlprism=?,rrnake=?,rrsphere=?,rrcylinder=?,rraxis=?,rrprism=?,rlnake=?,rlsphere=?,rlcylinder=?,rlaxis=?,rlprism=?,vrbottom=?,vrprism2=?,vrbottom2=?,vrfixed=?,vrcomment=?,vlbottom=?,vlprism2=?,vlbottom2=?,vlfixed=?,vlcomment=?,rrbottom=?,rrprism2=?,rrbottom2=?,rrfixed=?,rrcomment=?,rlbottom=?,rlprism2=?,rlbottom2=?,rlfixed=?,rlcomment=?,glass=?,glassnum=?,glassprice=?,mounting=?,mountingnum=?,mountingprice=?,allmountingprice=?,optometrist=?,decisionmaker=?,trier=?,receiver=? where id=?";
		if (JDBConnection.update(sqlstr, new String[]{name,vrnake,vrsphere,vrcylinder,vraxis,vrprism,vlnake,vlsphere,vlcylinder,vlaxis,vlprism,rrnake,rrsphere,rrcylinder,rraxis,rrprism,rlnake,rlsphere,rlcylinder,rlaxis,rlprism,vrbottom,vrprism2,vrbottom2,vrfixed,vrcomment,vlbottom,vlprism2,vlbottom2,vlfixed,vlcomment,rrbottom,rrprism2,rrbottom2,rrfixed,rrcomment,rlbottom,rlprism2,rlbottom2,rlfixed,rlcomment,glass,glassnum,glassprice,mounting,mountingnum,mountingprice,allmountingprice,optometrist,decisionmaker,trier,receiver,id}))
			return true;
		else
			return false;
		
		
		
	}
	
	//ɾ���û�������Ϣ
	public boolean deleteUser(String id)
	{
		String sqlstr1="delete from users where id=?";
		String sqlstr2="delete from usersafterinf where id=?";
		String sqlstr3="delete from peijingxinxi where id=?";
		String sqlstr4="delete from interview where id=?";
		if (JDBConnection.update(sqlstr1, new String[]{id}))
		{
			JDBConnection.update(sqlstr2, new String[]{id});
			JDBConnection.update(sqlstr3, new String[]{id});
			JDBConnection.update(sqlstr4, new String[]{id});
			return true;
		}
		else
			return false;
	}
	
	
	//ɾ���û��������ϢdeleteCheckUser
	public boolean deleteCheckUser(String id)
	{
		String sqlstr="delete from usersafterinf where id=?";
		if (JDBConnection.update(sqlstr, new String[]{id}))
			return true;
		else
			return false;
	}
	
	
	//ɾ���û��侵��Ϣ
	public boolean deletepeijingxinxiUser(String id)
	{
		String sqlstr="delete from peijingxinxi where id=?";
		if (JDBConnection.update(sqlstr, new String[]{id}))
			return true;
		else
			return false;
	}
	
	
	
	
	public List lookAllUser()
	{
		String sqlstr="select * from users";
		List list=JDBConnection.queryForList(sqlstr, null);
		return list;
	}
	
	
	
	//����侵��Ϣ
	public boolean addpeijingxinxi(String id,String name,String vrnake,
			String vrsphere,String vrcylinder,String vraxis,String vrprism,String vlnake,
			String vlsphere,String vlcylinder,String vlaxis,String vlprism,String rrnake,
			String rrsphere,String rrcylinder,String rraxis,String rrprism,String rlnake,
			String rlsphere,String rlcylinder,String rlaxis,String rlprism,String vrbottom,
			String vrprism2,String vrbottom2,String vrfixed,String vrcomment,String vlbottom,
			String vlprism2,String vlbottom2,String vlfixed,String vlcomment,String rrbottom,
			String rrprism2,String rrbottom2,String rrfixed,String rrcomment,String rlbottom,
			String rlprism2,String rlbottom2,String rlfixed,String rlcomment,String glass,
			String glassnum,String glassprice,String mounting,String mountingnum,String mountingprice,
			String allmountingprice,String optometrist,String decisionmaker,String trier,String receiver)
	{
		String strsql="insert into peijingxinxi(id,name,vrnake,vrsphere,vrcylinder,vraxis,vrprism,vlnake,vlsphere," +
				"vlcylinder,vlaxis,vlprism,rrnake,rrsphere,rrcylinder,rraxis,rrprism,rlnake,rlsphere," +
				"rlcylinder,rlaxis,rlprism,vrbottom,vrprism2,vrbottom2,vrfixed,vrcomment,vlbottom,vlprism2," +
				"vlbottom2,vlfixed,vlcomment,rrbottom,rrprism2,rrbottom2,rrfixed,rrcomment,rlbottom,rlprism2," +
				"rlbottom2,rlfixed,rlcomment,glass,glassnum,glassprice,mounting,mountingnum,mountingprice," +
				"allmountingprice,optometrist,decisionmaker,trier,receiver) values (?,?,?,?,?,?,?,?,?,?,?,?,?," +
				"?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		if (JDBConnection.update(strsql, new String[]{id,name,vrnake,vrsphere,vrcylinder,vraxis,vrprism,vlnake,vlsphere,vlcylinder,vlaxis,vlprism,rrnake,rrsphere,rrcylinder,rraxis,rrprism,rlnake,rlsphere,rlcylinder,rlaxis,rlprism,vrbottom,vrprism2,vrbottom2,vrfixed,vrcomment,vlbottom,vlprism2,vlbottom2,vlfixed,vlcomment,rrbottom,rrprism2,rrbottom2,rrfixed,rrcomment,rlbottom,rlprism2,rlbottom2,rlfixed,rlcomment,glass,glassnum,glassprice,mounting,mountingnum,mountingprice,allmountingprice,optometrist,decisionmaker,trier,receiver}))
			return true;
		else
			return false;
	}
	
	
	
	//����Ա�޸ĸ�����Ϣ
	public boolean okOperate(String oldname,String oldpassword,String newname,String newpassword)
	{
		String strsql="update operate set name=?,password=? where name=? and password=?";
		if (JDBConnection.update(strsql, new String[]{newname,newpassword,oldname,oldpassword}))
			return true;
		else
			return false;
		
	}
	
}
