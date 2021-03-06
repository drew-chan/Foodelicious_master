<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container" id="registerMain">
	<h3>RegisterSystem</h3>
	<div class="input-group mb-3">
		<span class="input-group-text">帳號</span> <input type="text"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userAccount"
			name="userAccount">
	</div>
	<div class="input-group mb-3">
		<span class="input-group-text">密碼</span> <input type="text"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userPwd"
			name="userPwd">
	</div>
	<div class="input-group mb-3">
		<span class="input-group-text">姓名</span> <input type="text"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userName"
			name="userName">
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text">Email</span> <input type="email"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userEmail"
			name="userEmail">
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text">手機</span> <input type="text"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userPhone"
			name="userPhone">
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text">生日</span> <input type="text"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userBirth"
			name="userBirth">
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text">地址</span> <input type="text"
			class="form-control" aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" id="userAddress"
			name="userAddress">
	</div>

	<button onclick="registBTN()" class="btn btn-outline-primary">註冊</button>

</div>

<script>
	function registBTN() {
		var postData = {
			account : $("#userAccount").val(),
			pwd : $("#userPwd").val(),
			member_name : $("#userName").val(),
			member_birth : $("#userBirth").val(),
			member_phone : $("#userPhone").val(),
			member_address : $("#userAddress").val(),
			member_mail : $("#userEmail").val()
		};
		$.ajax({
			url : "/register.controller",
			data : JSON.stringify(postData),
			type : "POST",
			contentType : "application/json;charset=utf-8",
		});
	}
</script>