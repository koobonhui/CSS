<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie ck = new Cookie("lang", request.getParameter("lang"));
	ck.setMaxAge(60 * 60 * 24);
	response.addCookie(ck);
	response.sendRedirect("cookieEx1.jsp");
%>
