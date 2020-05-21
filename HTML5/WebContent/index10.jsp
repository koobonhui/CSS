<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = "";
	request.setCharacterEncoding("UTF-8");
	if(session.getAttribute("userId") != null) {
		userId = (String)session.getAttribute("userId");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index10.css" />
</head>
<body>
<div class = "loginbar">
	<span style = "margin-right: 30px"><%=userId.equals("") ? "" : userId + " 님 반갑습니다."%></span>
	<%=userId.equals("") ? "<a href = 'login10.jsp'>로그인</a>" : "<a href = 'logoutAction.do'>로그아웃</a>"%>
	<%=userId.equals("") ? "<a href = 'join10.jsp'>회원가입</a>" : ""%>
</div>
<hr />
<header>
	<h1>
		<a href="#">
			<img id = "logo" src="imgs/cpu.svg" alt="로고"/>
		</a>
	</h1>
	
	<nav class="mnav">
		<ul>
			<li><a href="#">탑</a>
				<ul class="snav">
					<li><a href="#">블라우스</a></li>
					<li><a href="#">티</a></li>
					<li><a href="#">셔츠</a></li>
					<li><a href="#">니트</a></li>
				</ul>
			</li>
			
			<li><a href="#">아우터</a>
				<ul class="snav">
					<li><a href="#">자켓</a></li>
					<li><a href="#">코트</a></li>
					<li><a href="#">가디건</a></li>
					<li><a href="#">머플러</a></li>
				</ul>
			</li>
			
			<li><a href="#">팬츠</a>
				<ul class="snav">
					<li><a href="#">청바지</a></li>
					<li><a href="#">짧은바지</a></li>
					<li><a href="#">긴바지</a></li>
					<li><a href="#">레깅스</a></li>
				</ul>
			</li>
			
			<li><a href="#">악세서리</a>
				<ul class="snav">
					<li><a href="#">귀고리</a></li>
					<li><a href="#">목걸이</a></li>
					<li><a href="#">반지</a></li>
					<li><a href="#">팔찌</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</header>

<div id="main">
	<ul>
		<li><a href="#"><img src="imgs/banner1.jpg" alt="메인이미지1"></a></li>
		<li><a href="#"><img src="imgs/banner2.jpg" alt="메인이미지2"></a></li>
		<li><a href="#"><img src="imgs/banner3.jpg" alt="메인이미지3"></a></li>
	</ul>
</div>

<div id="contents">
	<div class="tabmenu">
		<ul>
			<li id="notice" class="btnCon">
				<input type="radio" checked name="tab" id="tabmenu1">
				<label for="tabmenu1">공지사항</label>
				<div class="tabCon">
					<table class="table">
						<tr>
							<td><a href="#popup">Lorem Ipsum is simply dummy text of the...</a></td>
						</tr>
						<tr>
							<td><a href="#">Lorem Ipsum is simply dummy text of the...</a></td>
						</tr>
						<tr>
							<td><a href="#">Lorem Ipsum is simply dummy text of the...</a></td>
						</tr>
						<tr>
							<td><a href="#">Lorem Ipsum is simply dummy text of the...</a></td>
						</tr>
						<tr>
							<td><a href="#">Lorem Ipsum is simply dummy text of the...</a></td>
						</tr>
					</table>
				</div>
			</li>
			
			<li id="gallery" class="btnCon">
				<input type="radio" name="tab" id="tabmenu2">
				<label for="tabmenu2">갤러리</label>
				<div class="tabCon">
					<ul>
						<li><a href="#"><img src="-" alt="갤러리01"></a></li>
						<li><a href="#"><img src="-" alt="갤러리02"></a></li>
						<li><a href="#"><img src="-" alt="갤러리03"></a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	
	<div class="banner">
		<ul>
			<li>
				<a href="#"><img src="imgs/banner_04.jpg" alt="배너이미지"></a>
			</li>
		</ul>
	</div>
	
	<div class="short">
		<div class="shortbtn">
			<a href="#"><img src="imgs/menu01.png" alt="바로가기01"></a>
	 	</div>
		<div class="shortbtn">
			<a href="#"><img src="imgs/menu02.png" alt="바로가기02"></a>
		</div>
		<div class="shortbtn">
			<a href="#"><img src="imgs/menu03.png" alt="바로가기03"></a>
		</div>
	</div>
</div>

<footer>
	<h1><a href="#"><img src="imgs/cpu.svg" alt="logo_black"></a></h1>
	
	<div class="copyright">
		<p>
  			상호명:(주)저스트컴퍼니 | 대표자:김철수 | E-mail: justmall@contact.com <br>
			Copyright 2020 JUST Shoppingmall All Rights Reserved. <br>
		</p>
		
		<ul>
			<li><a href="#">법적고지</a></li>
			<li><a href="#">개인정보취급방침</a></li>
			<li><a href="#">개인정보처리방침</a></li>
		</ul>
	</div>
	
	<div class="sns">
		<ul>
		  	<li>블로그:<a href="#"> justmall.blog.com</a></li>
		  	<li>인별그램:<a href="#"> @justmall</a></li>
		  	<li>페이스북:<a href="#"> @justmall_in</a></li>
	 	</ul>
	</div>
</footer>
<!-- 자바스크립트 -->
<script src="js/jquery-3.5.0.min.js"></script>
<script src="js/index10.js"></script>
</body>
</html>