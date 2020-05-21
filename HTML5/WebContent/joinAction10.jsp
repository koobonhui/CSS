<%@page import="com.test.ex.vo.UserBean"%>
<%@page import="com.test.ex.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="userbean" class = "com.test.ex.vo.UserBean" scope = "page" />
<jsp:setProperty name = "userbean" property = "uName" param = "uName" />
<jsp:setProperty name = "userbean" property = "uEmail" param = "uEmail" />
<jsp:setProperty name = "userbean" property = "uPw" param = "uPw" />
<jsp:setProperty name = "userbean" property = "uMobile" param = "uMobile" />
<jsp:setProperty name = "userbean" property = "uGender" param = "uGender" />
<jsp:setProperty name = "userbean" property = "uBirth" param = "uBirth" />
<jsp:setProperty name = "userbean" property = "uEmailOk" param = "uEmailOk" />
<jsp:setProperty name = "userbean" property = "uCpOk" param = "uCpOk" />
<%
	String numbers = request.getParameter("uCp1") + " - " + request.getParameter("uCp2") + " - " + request.getParameter("uCp3");
	userbean.setuCp(numbers);
	UserDAO userdao = new UserDAO();
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
%>