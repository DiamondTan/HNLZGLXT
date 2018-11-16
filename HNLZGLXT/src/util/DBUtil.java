package util;


import java.sql.*;


/**
 * ���ݿ����ӻ�ȡ���ͷŹ�����
 * 
 * @author zhn
 *
 */
public class DBUtil {

	static String user = "root";
	static String password = "605204";
	static String url = "jdbc:mysql://localhost:3306/hnlzglxt?useSSL=false&serverTimezone=GMT&useOldAliasMetadataBehavior=true";

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("��ʼ�����������ݿ⣡");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() { 
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("���ӳɹ���");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void closeJDBC(ResultSet rs, Statement stmt, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
