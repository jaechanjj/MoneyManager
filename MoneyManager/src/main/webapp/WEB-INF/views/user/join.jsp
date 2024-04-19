<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Info desk</title>
</head>
<body>
	<%@include file="../common/header.jsp"%>


	<div class="container mt-5">
		<form id="signupForm" method="post"
			class="col-md-6 mx-auto">
			<div class="form-group">
				<label for="userId">ID:</label> <input type="text" id="userId"
					name="userId" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="userPwd">PWD:</label> <input type="password"
					id="userPwd" name="userPwd" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="email">EMAIL:</label> <input type="email" id="email"
					name="email" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="userName">NAME:</label> <input type="text" id="userName"
					name="userName" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="age">Age:</label> <input type="text" id="age" name="age"
					class="form-control" required>
			</div>

			<div class="form-group">
				<label for="gender">GENDER:</label> <select id="gender"
					name="gender" class="form-control mb-3" required>
					<option value="">gender</option>
					<option value="male">M</option>
					<option value="female">F</option>
				</select>
			</div>

			<div class="text-center">
				<input type="submit" id="btn-join" value="SIGN IN"
					class="btn btn-primary">
			</div>
		</form>
	</div>

	<script>
		document.querySelector("#btn-join").addEventListener("click",
				function() {
					if (!document.querySelector("#userName").value) {
						alert("이름 입력!!");
						return;
					} else if (!document.querySelector("#userId").value) {
						alert("아이디 입력!!");
						return;
					} else if (!document.querySelector("#userPwd").value) {
						alert("비밀번호 입력!!");
						return;
					} else if (!document.querySelector("#email").value) {
						alert("이메일 입력!!");
						return;
					} else if (!document.querySelector("#age").value) {
						alert("나이 입력!!");
						return;
					} else {
						let form = document.querySelector("signupForm");
						form.setAttribute("action", "user/join");
						form.submit();
					}
				});
	</script>
</body>
</html>