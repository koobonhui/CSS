<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#memberListArea {
	width : 400px;
	border : 1px solid gray;
	margin : auto;
}

table {
	width : 380px;
	margin : auto;
	text-align: center;
}
</style>
</head>
<body>
<section id = "memberListArea">
	<table>
		<tr>
			<td colspan = 2><h1>회원 목록</h1></td>
		</tr>
		
		<c:forEach var = "member" items = "${memberList }">
		<tr>
			<td>
				<a href = "memberViewAction.dom?id=${member.member_id }">${member.member_id}</a>
			</td>
			
			<td>
				<a href = "memberDeleteAction.dom?id=${member.member_id }" onclick = "return confirm('삭제하시겠습니까?')">삭제</a>
			</td>
		</tr>
		</c:forEach>		
	</table>
	
	<a href = "memberLogin.dom">로그인화면으로 돌아가기</a>
</section>
</body>
</html>