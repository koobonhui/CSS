<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.test.jsp.dto.BeanTest"%>
<jsp:useBean id="myBean" class="com.test.jsp.dto.BeanTest" scope="page"></jsp:useBean>
<%-- 클래스로 객체를 생성하고 변수명이 id값으로 저장된다. --%>
<jsp:useBean id="yourBean" class="com.test.jsp.dto.BeanTest" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:setProperty property="name" name="myBean" value="hongkil"/>
<%
	out.println(myBean.getName());
%>
<hr />
<%
	yourBean.setName("김영희");
%>
<jsp:getProperty property="name" name="yourBean"/>
</body>
</html>