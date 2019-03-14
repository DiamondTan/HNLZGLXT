<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="./css/default.css">
<link rel="stylesheet" type="text/css" href="./css/login.css">
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
	//验证码的更换 
	function changeValidateCode(){
		document.getElementById("validateCode").src = "ValidateCodeServlet?rand="+Math.random();
	}
</script>
</head>

<body>
<div id="header">
<a href="#" title="Home page">
<img class="logo" src="images/logo_top.png"></a>
</div>
<div class="top-bottom-hr-line">
</div>
<div class="login-bg">

<div class="login_title_text"><div>用户登录</div></div>
<div class="login c1">
<div class="login_left fl">
		<form action="LoginServlet" method="post" onsubmit="return validate();">
			<div class="login_1">
				<div class="span1">
					<label class="tn_form_label">账 号:</label>
					<input class="tn_textbox" type="text" name="username" id="stuid" placeholder="请输入账号"></input>
				</div>
				<div class="span1">
					<label class="tn_form_label">密 码:</label>
					<input class="tn_textbox" type="password" name="password" id="password"placeholder="请输入密码"></input>
				</div>
				<div class="span1">
					<label class="tn_form_label">验证码:</label>
					<input class="tn_textbox-long" type="text" name="verifyCode"></input>
					<span>
					<img src="ValidateCodeServlet" id="validateCode" title="单击换一换"  style="font-size:10px" onclick="changeValidateCode()">
					<a href="javascript:changeValidateCode();"style="font-size:11px">看不清?</a>
					</span>
				</div>
				<div class="span1">
					<label class="tn_form_label">&nbsp;</label>
					<input class="tn_remember_me" type="checkbox" name="rememberMe" id="rememberMe"/>
					<label style="font-size:11px;">记住我</label>
					
					<a href="javascript:changeValidateCode();"style="font-size:11px;display:none;">忘记密码?</a>
				</div>
				<div class="tn_form_row_botton">
					
					<input name="submit" type="submit" class="tn_button_text"value="登   录">
					</div><div class="clear"></div>
			</div>
		</form>
		</div>
		<div class="login_right fr">
		<div class="question">常见问题</div>
		<div class="queitem">
                    <div class="quetitle">登录失败怎么办?</div>
                    <div class="quecon" style="display: block;">您好，请首先确认是否账号密码有误。如果确认无误或忘记密码请联系管理员，不支持自助找回密码</div>
                </div>
		</div>
</div>
</div>
<div class="top-bottom-hr-line">
<footer>

<aside class="footer_word">copyright&copy;河南省廉政档案管理系统开发小组<br>
<a href="./login.html" title="click to learn more">河南省政府门户</a>&nbsp;&nbsp;
<a href="./login.html" title="click to learn more">河南省人大常委</a>&nbsp;&nbsp;
<a href="./login.html" title="click to learn more">政协河南委员会</a>&nbsp;&nbsp;
<a href="./login.html" title="click to learn more">河南省检察委员会</a>&nbsp;&nbsp;</aside>

</footer>
<div style="width:100%;height:30px;line-height:30px;font-size:12px;color:#666;text-align:center;">
本网页在IE 9+、Firefox 18+、Chrome 22+等浏览器中进行了兼容性验证</div>
</div>
</body>
</html>