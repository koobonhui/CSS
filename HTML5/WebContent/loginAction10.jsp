<%@page import="com.test.ex.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="userbean" class = "com.test.ex.vo.UserBean" scope = "page" />
<jsp:setProperty name = "userbean" property = "uEmail" param = "uEmail" />
<jsp:setProperty name = "userbean" property = "uPw" param = "uPw" />
<%
	UserDAO userDAO = new UserDAO();
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
%>
