package com.pikapedia.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.pikapedia.search.DBManager;

public class AccountDAO {

	public static void Login(HttpServletRequest request) {
		// 1. parameter
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 2. result 
		String result ="";
		
		// 3. db connect
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from account where a_id = ?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			String dbpw = "";
			if (rs.next()) {
				dbpw = rs.getString("a_pw");
				if (dbpw.equals(pw)) {
					result = "로그인 성공!";
					System.out.println(result);
					// 세션
					Account account = new Account();
					account.setName(rs.getString("a_name"));
					account.setId(rs.getString("a_id"));
					account.setPw(rs.getString("a_pw"));
					account.setEmail("a_email");
					account.setImg(rs.getString("a_img"));
					HttpSession hs = request.getSession();
					hs.setAttribute("account", account);
				}else {
					result = "비밀번호가 다릅니다.";
					System.out.println(result);
				}
			}else {
				result = "존재하지 않는 계정입니다.";
				System.out.println(result);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		

		
	}
	
	public static void checkLogin(HttpServletRequest request) {
		Account account = (Account) request.getSession().getAttribute("account");
		if (account == null) {
			request.setAttribute("loginPage", "account/login.jsp");
		} else {
			request.setAttribute("loginPage", "account/loginOk.jsp");			
		}
	}

	public static void Logout(HttpServletRequest request) {
		// logout
		
		
		HttpSession hs = request.getSession();
		
		hs.setAttribute("account", null);
		hs.removeAttribute("account");
	}

	public static void joinAccount(HttpServletRequest request) {
		// 1. 값 or db
		String sql = "insert into account values(?, ?, ?, ?, 'default.png')";
		Connection con = null;
		PreparedStatement pstmt = null;
				
		try {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id2");
		String pw = request.getParameter("pw2");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1 + "@" + email2;
		System.out.println(name);
		System.out.println(id);
		System.out.println(pw);
		System.out.println(email);
				
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pw);
		pstmt.setString(4, email);
				
		if (pstmt.executeUpdate() == 1) {
			System.out.println("등록 성공!");
		}
				
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db server error");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	

}
