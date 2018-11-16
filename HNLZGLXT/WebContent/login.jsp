<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body
{
	background-image:url('images/pic1.jpg');
}
</style>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link href="css/login.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	function validate() {
		var username = document.getElementById("username");
		var password = document.getElementById("password");
		if (username.value == "") {
			alert("账号不能为空！");
			email.focus();
			return false;
		}
		if (password.value == "") {
			alert("密码不能为空！");
			password.focus();
			return false;
		}
		else if(password.length<5||password.length>12){
			alert("密码长度不符合要求，请输入5~12位密码！");
			password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="login_content">
				<form action="LoginServlet" method="post" onsubmit="return validate()">
				<div class="page_name">登录</div>
				<div class="login_l">
					<div class="span1">
						<label class="label">账号：</label> 
						<input class="tn-textbox" type="text" name="username" id="username">
					</div>
					<br>
					<div class="span1">
						<label class="label">密码：</label>
						<input class="tn-textbox" type="password" name="password" id="password">
					</div>
				</div>
					<div class="button">
						<div class="span1">
							<input name="submit" type="submit" class="tn-button-text" value="登   录">
						</div>
					</div>
					</form>
		</div>
</body>
</html>