<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#loginformArea {
    margin : auto;
	width : 400px;
	border : 1px solid gray;
}

table {
	width : 380px;
	margin : auto;
	text-align: center;
}
</style>
</head>
<body>
<section id = "loginFormArea">
	<form name = "loginForm" action = "memberLoginAction.dom" method = "post">
		<table>
			<tr>
				<td colspan="2">
					<h1>로그인 페이지</h1>
				</td>
			</tr>
			
			<tr>
				<td><label for = "member_id">아이디 : </label></td>
				<td><input type="text" name="member_id" id = "member_id"/></td>
			</tr>
			
			<tr>
				<td><label for = "member_pw">비밀번호 : </label></td>
				<td><input type="password" name="member_pw" id = "member_pw"/></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<a href="javascript:loginForm.submit()">로그인</a>&nbsp;&nbsp;
					<a href="memberJoin.dom">회원가입</a>
				</td>
			</tr>
		</table>
	</form>
</section>
</body>
</html>