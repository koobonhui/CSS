package com.test.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.test.ex.vo.UserBean;

public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public UserDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/exam");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void uClose() {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public int join(UserBean userBean) {
		String sql = "insert into user values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userBean.getuName());
			pstmt.setString(2, userBean.getuEmail());
			pstmt.setString(3, userBean.getuPw());
			pstmt.setString(4, userBean.getuMobile());
			pstmt.setString(5, userBean.getuCp());
			pstmt.setString(6, userBean.getuGender());
			pstmt.setString(7, userBean.getuBirth());
			pstmt.setString(8, userBean.getuEmailOk());
			pstmt.setString(9, userBean.getuCpOk());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int login(String uEmail, String uPw) {
		String sql = "select uPw from user where uEmail = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uEmail);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(uPw)) {
					return 1; // 로그인
				} else {
					return 0; // 비번없음
				}
			}
			return -1; // 아이디 없음
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; // 디비오류
	}
	
	public int Check(String uEmail) {
		String sql = "select uEmail from user where uEmail = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uEmail);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(uEmail)) {
					return 0;	// 아이디 중복
				}
			}
			return 1; // 사용가능
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 디비오류
	}
}
