<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "css/join10.css" />
</head>
<body>
<section>
	<div class = "container">
		<form name = "joinForm" action="joinAction.do" method="post">
			<p><small>* 은 필수 입력 항목</small></p>
			
			<hr />
			
			<div class = "clearFix">
				<div><label><span>*</span> 이름</label></div>
				<div><input type = "text" name = "uName" required="required" autocomplete="off" /></div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 회원 아이디(이메일)</label></div>
				<div>
					<input type = "email" name = "uEmail" required="required" autocomplete="off"/> 
					<button type = "button">중복확인</button>
				</div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 비밀번호</label></div>
				<div><input type = "password" name = "uPw" required="required" autocomplete="off"/> <small>영문 또는 영문/숫자의 조합 (6 ~ 12자 이내)</small></div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 비밀번호 확인</label></div>
				<div><input type = "password" name = "uPw2" required="required" autocomplete="off"/> <small>확인을 위해 다시 적어주세요.</small></div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 이동통신사</label></div>
				<div>
					<select name = "uMobile">
						<option value = "">통신사</option>
						<option value = "KT">KT</option>
						<option value = "SKT">SKT</option>
						<option value = "U+">U+</option>
						<option value = "알뜰폰">알뜰폰(기타)</option>
					</select>
				</div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 휴대전화</label></div>
				<div>
					<input type = "text" name = "uCp1" maxlength = "3" required="required" autocomplete="off"/> - 
					<input type = "text" name = "uCp2" maxlength = "4" required="required" autocomplete="off"/> - 
					<input type = "text" name = "uCp3" maxlength = "4" required="required" autocomplete="off"/>
				</div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 성별</label></div>
				<div>
					<input type="radio" name="uGender" value="M" id = "sex" checked="checked"><label for="sex">남</label>
					<input type="radio" name="uGender" value="F" id = "sex2"><label for="sex2">여</label>
				</div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 생년월일</label></div>
				<div>
					<input type = "date" name = "uBirth" />
				</div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> 이메일 수신동의</label></div>
				<div>
					<input type="radio" name="uEmailOk" value="ok" id = "uEmailOk" checked="checked"><label for="uEmailOk">수신함</label>
					<input type="radio" name="uEmailOk" value="no" id = "uEmailOk2"><label for="uEmailOk2">수신안함</label>
				</div>
			</div>
			
			<div class = "clearFix">
				<div><label><span>*</span> SMS 수신동의</label></div>
				<div>
					<input type="radio" name="uCpOk" value="ok" id = "uCpOk" checked="checked"><label for="uCpOk">수신함</label>
					<input type="radio" name="uCpOk" value="no" id = "uCpOk2"><label for="uCpOk2">수신안함</label>
				</div>
			</div>
			
			<div class = "clearFix">
				<input type = "submit" value="회원가입" />
			</div>
		</form>
	</div>
</section>
<!-- 자바스크립트 -->
<script src="js/jquery-3.5.0.min.js"></script>
<script src="js/Check.js"></script>
</body>
</html>