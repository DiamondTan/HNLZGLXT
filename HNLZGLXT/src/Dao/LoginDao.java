package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import util.DBUtil;;

public class LoginDao {

	/**
	 * 验证Email是否已被注册
	 * 
	 * @return
	 */

	/**
	 * 求职者信息注册保存
	 * 
	 * @param email
	 * @param password
	 */

	/**
	 * 注册用户登录
	 * 
	 * @param email
	 * @param password
	 * @return
	 */
	public int login(String username, String password) {
		int id1 = -10;
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT role FROM user WHERE account=? and password=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next())
				id1 = rs.getInt("role");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, pstmt, conn);
		}
		return id1;
	}
	public static String getOrg(String username, String password) {
		String org="";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT 	organization_id FROM user WHERE account=? and password=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next())
				org = rs.getString(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, pstmt, conn);
		}
		return org;
	}
	public  int getId(String username, String password) {
		int id=0;
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT id FROM user WHERE account=? and password=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next())
			id = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, pstmt, conn);
		}
		return id;
	}
	/**
	 * 验证与旧密码是否一致
	 * @param userid
	 * @param pd
	 * @return
	 */
	public boolean isEqualsOldPasswd(int userid, String pd) {
		// TODO 自动生成的方法存根
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM user WHERE password=? AND id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pd);
			pstmt.setInt(2, userid);
			rs = pstmt.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, pstmt, conn);
		}
		return false;
	}
	public void updateUserAccountPassword(int userid, String password) {
		String sql= "UPDATE user SET password=? where id=?";
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setInt(2, userid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(null, pstmt, conn);
		}
		
	}

}
