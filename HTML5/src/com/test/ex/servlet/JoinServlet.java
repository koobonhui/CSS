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


@WebServlet("/joinAction.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		UserBean userbean = new UserBean();
		UserDAO userdao = new UserDAO();
		
		userbean.setuName(request.getParameter("uName"));
		userbean.setuEmail(request.getParameter("uEmail"));
		userbean.setuPw(request.getParameter("uPw"));
		userbean.setuMobile(request.getParameter("uMobile"));
		userbean.setuGender(request.getParameter("uGender"));
		userbean.setuBirth(request.getParameter("uBirth"));
		userbean.setuEmailOk(request.getParameter("uEmailOk"));
		userbean.setuCpOk(request.getParameter("uCpOk"));
		
		String numbers = request.getParameter("uCp1") + " - " + request.getParameter("uCp2") + " - " + request.getParameter("uCp3");
		userbean.setuCp(numbers);
		
		int result = userdao.join(userbean);
		userdao.uClose();
		
		if(result != -1) {
			session.setAttribute("userId", userbean.getuEmail());
			response.sendRedirect("index10.jsp");
		} else {
			out.println("<script>");
			out.println("alert('회원가입에 실패했습니다. 관리자에게 연락');");
			out.println("history.back();");
			out.println("</script>");
		}
		
	}
}
