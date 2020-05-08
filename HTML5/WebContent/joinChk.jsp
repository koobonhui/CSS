<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="com.test.jsp.dto.JoinTest"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<jsp:setProperty property="id" name="user"/>
<%--만약 폼과 객체가 이름이 다르면 param으로 따로따로 지정해야한다. --%>
<%--<jsp:setProperty property="id" name="user" param="" value=""/> --%>
<%--param은 앞쪽값을 프로퍼티에 넣는것
	value는 내가 설정한 값을 프로퍼티에 넣는것 --%>
<jsp:setProperty property="pass" name="user"/>
<jsp:setProperty property="name" name="user"/>
<jsp:setProperty property="sex" name="user"/>
<jsp:setProperty property="age" name="user"/>
<jsp:setProperty property="email" name="user"/>
<%--프로퍼티가 갯수랑 다 동일하면 *로 써도 됨 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty property="id" name="user"/><hr />
</body>
</html>