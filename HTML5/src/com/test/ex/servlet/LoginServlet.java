package com.test.ex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.ex.dao.UserDAO;
import com.test.ex.vo.UserBean;

@WebServlet("/loginAction.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO();
		UserBean userbean = new UserBean();
		userbean.setuEmail(request.getParameter("uEmail"));
		userbean.setuPw(request.getParameter("uPw"));
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		int result = userDAO.login(userbean.getuEmail(), userbean.getuPw());
		if(result == 1) {
			session.setAttribute("userId", userbean.getuEmail());
			out.println("<script>");
			out.println("location.href = 'index10.jsp'");
			out.println("</script>");
		} else if(result == 0) {
			out.println("<script>");
			out.println("alert('비번틀림')");
			out.println("history.back()");
			out.println("</script>");
		} else if(result == -1) {
			out.println("<script>");
			out.println("alert('아이디없음')");
			out.println("history.back()");
			out.println("</script>");
		} else if(result == -2) {
			out.println("<script>");
			out.println("alert('디비오류')");
			out.println("history.back()");
			out.println("</script>");
		}
		userDAO.uClose(); 
	}
}
