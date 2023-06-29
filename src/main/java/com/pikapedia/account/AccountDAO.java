package com.pikapedia.account;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.pikapedia.db.DBManager;

public class AccountDAO {

	public static void Login(HttpServletRequest request) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String result ="";
		
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
					Account account = new Account();
					account.setName(rs.getString("a_name"));
					account.setId(rs.getString("a_id"));
					account.setPw(rs.getString("a_pw"));
					account.setEmail(rs.getString("a_email"));
					account.setImg(rs.getString("a_img"));
					HttpSession hs = request.getSession();
					hs.setAttribute("account", account);
				}else {
					result = "비밀번호가 틀립니다";
					System.out.println(result);
				}
			}else {
				result = "존재하지 않는 계정입니다";
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
			request.setAttribute("contentPage", "jsp/login.jsp");
		} else {
			request.setAttribute("contentPage", "jsp/loginOk.jsp");			
		}
	}

	public static void Logout(HttpServletRequest request) {
		
		// 로그아웃 하는일
		// 세션 죽이기
		HttpSession hs = request.getSession();
		
		hs.setAttribute("account", null);
		hs.removeAttribute("account");
	}

	public static void SignUp(HttpServletRequest request) {
		// 1. 값 or DB
		String sql = "insert into account values(?, ?, ?, ?, 'ball.png')";
		Connection con = null;
		PreparedStatement pstmt = null;
				
		try {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("UserName");
		String id = request.getParameter("Name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("Email");
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
	
	public static void editAccount(HttpServletRequest request) {
		
		String path = request.getServletContext().getRealPath("img/profile");
		System.out.println(path);
		String sql = "update account set a_name = ?, a_pw = ?, a_email = ?, a_img = ? where a_id = ?";
		Connection con = null;
		PreparedStatement pstmt = null;
		Account a = (Account) request.getSession().getAttribute("account");
		String id = a.getId();
		String oldImg = a.getImg();
		
		try {
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			String name = mr.getParameter("UserName");
			String pw = mr.getParameter("pw");
			String email = mr.getParameter("Email");
			String img = mr.getFilesystemName("img");
			System.out.println(id); 
			System.out.println(name);
			System.out.println(pw);
			System.out.println(email);
			System.out.println(oldImg);
			System.out.println(img);
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, email);
			if (img == null) {
				pstmt.setString(4, oldImg);
			} else {
				pstmt.setString(4, img);
			}
			pstmt.setString(5, id);
			
			if (pstmt.executeUpdate() >= 1 ) {
				System.out.println("수정 성공!");
				request.setAttribute("r", "수정 성공!");
				
				Account account = new Account();
				account.setName(name);
				account.setId(id);
				account.setPw(pw);
				account.setEmail(email);
				account.setImg(oldImg);
				
				if (img != null) {
					File f = new File(path + "/" + oldImg);
					f.delete();
					account.setImg(img);
				}
			
				HttpSession hs = request.getSession();
				hs.setAttribute("account", account);
				
					
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db server error");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public static void Signout(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "delete from account where a_id = ?";
		Account a = (Account) request.getSession().getAttribute("account");
		String id = a.getId();
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공!");
				AccountDAO.Logout(request);
				request.setAttribute("r", "삭제 성공!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db server error");
			request.setAttribute("r", "db server error");
		}finally {
			DBManager.close(con, pstmt, null);
		}
	}
}
