package jdbc;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

public class JDBConnection {
	private static String url = "jdbc:mysql://localhost:3306/jinxiaocun";
	private static String driver = "com.mysql.jdbc.Driver";
	private static String userName = "root";
	private static String password = "1234";
	static {
		//获取全局变量文件的类
		ResourceBundle bundle = ResourceBundle.getBundle("jdbc");  //获取全局变量文件的名称
		//获取全局变量文件的内容
		url = bundle.getString("jdbc.url");
		driver = bundle.getString("jdbc.driver");
		userName = bundle.getString("jdbc.username");
		password = bundle.getString("jdbc.password");
	}

	public static String getUrl() {
		return url;
	}

	public static String getDriver() {
		return driver;
	}

	public static String getUserName() {
		return userName;
	}

	public static String getPassword() {
		return password;
	}

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(getDriver());
		} catch (ClassNotFoundException e) {
	
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(getUrl(), getUserName(),
					getPassword());
		} catch (SQLException e) {
	
			e.printStackTrace();
			System.out.println(e);
		}
		return conn;
	}
	//数据库查询，转化成list存储
	public static List queryForList(String sql, Object[] args) {
		Connection conn = null;
		List list = new ArrayList();
		try {
			conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					pstmt.setObject(i + 1, args[i]);
				}
			}
			ResultSet rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int cols = rsmd.getColumnCount();
			String[] colNames = new String[cols];
			for (int i = 0; i < cols; i++) {
				colNames[i] = rsmd.getColumnName(i + 1);
			}
			while (rs.next()) {
				Map row = new HashMap();
				for (int i = 0; i < cols; i++) {
					row.put(colNames[i].toLowerCase(), rs.getObject(i + 1));
				}
				list.add(row);
			}
			rs.close();
			pstmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	//数据库添加、删除、修改
	public static boolean update(String sql, Object[] args) {
		Connection conn = null;

		int count = -1;
		try {
			conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					pstmt.setObject(i + 1, args[i]);
				}
			}
			count = pstmt.executeUpdate();
			pstmt.close();

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
	
					e.printStackTrace();
				}
			}
		}
		if (count > 0) {
			return true;
		} else {
			return false;
		}
	}
	// 用于查询结果为一条记录的查询
	public static Map queryForMap(String sql, Object[] params) throws Exception {
		List result = queryForList(sql, params);
		if (result.size() == 1) {
			return (Map) result.get(0);
		} else {

			throw new Exception("期望一行数据，实际返回" + result.size() + "行");
		}

	}

	
}

