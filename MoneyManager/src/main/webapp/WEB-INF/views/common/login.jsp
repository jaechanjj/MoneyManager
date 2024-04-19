<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoneyManager</title>
<!-- 여기에 필요한 CSS 파일 링크 추가 -->
</head>
<body>
	<div id="header">
		<h1>Welcome to MoneyManager</h1>
		<!-- 로그인 폼 -->

		<form id="form-login" method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username"> <label for="password">Password:</label>
			<input type="password" id="password" name="password"> <input
				type="submit" id="btn-login" value="Login">
			<button type="button" id="btn-mv-join">Regist</button>
		</form>
	</div>
	<!-- 기타 페이지 내용 -->
</body>
<script>

	document.querySelector("#btn-mv-join").addEventListener("click", function () {
		location.href = "${root}/user/join";
  	});


      document.querySelector("#btn-login").addEventListener("click", function () {
        if (!document.querySelector("#userid").value) {
          alert("아이디 입력!!");
          return;
        } else if (!document.querySelector("#userpwd").value) {
          alert("비밀번호 입력!!");
          return;
        } else {
          let form = document.querySelector("#form-login");
          form.setAttribute("action", "${root}/user/login");
          form.submit();
        }
      });
    </script>

</html>