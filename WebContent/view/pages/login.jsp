<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>阿婆私房菜</title>

<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

<link rel="stylesheet" media="screen"
	href="${pageContext.request.contextPath}/view/css/login.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/view/css/reset.css" />
</head>

<body>
	<div id="particles-js">
		<div class="login">
			<div class="login-top">阿婆私房菜后台管理系统</div>
			
			<div class="login-center clearfix">
				<div class="login-center-img">
					<img src="${pageContext.request.contextPath}/view/img/name.png" />
				</div>
				<div class="login-center-input">
					<input type="text" id="loginName" value="" placeholder="请输入您的用户名"
						onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'" />
					<div class="login-center-input-text">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img">
					<img src="${pageContext.request.contextPath}/view/img/password.png" />
				</div>
				<div class="login-center-input">
					<input type="password" id="password" value="" placeholder="请输入您的密码"
						onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'" />
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
			<p style="color:red;font-size: 20px;text-align: center;">${msg}</p>
			<div class="login-button">登录</div>
		</div>
		<div class="sk-rotating-plane"></div>
	</div>

	<!-- scripts -->
	<script src="${pageContext.request.contextPath}/view/js/particles.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/js/app.js"></script>
	<script type="text/javascript">
		function hasClass(elem, cls) {
			cls = cls || '';
			if (cls.replace(/\s/g, '').length == 0)
				return false; //当cls没有参数时，返回false
			return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
		}

		function addClass(ele, cls) {
			if (!hasClass(ele, cls)) {
				ele.className = ele.className == '' ? cls : ele.className + ' '
						+ cls;
			}
		}

		function removeClass(ele, cls) {
			if (hasClass(ele, cls)) {
				var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '')
						+ ' ';
				while (newClass.indexOf(' ' + cls + ' ') >= 0) {
					newClass = newClass.replace(' ' + cls + ' ', ' ');
				}
				ele.className = newClass.replace(/^\s+|\s+$/g, '');
			}
		}
		document.querySelector(".login-button").onclick = function() {
			
			addClass(document.querySelector(".login"), "active")
			setTimeout(
					function() {
						addClass(document.querySelector(".sk-rotating-plane"),
								"active")
						document.querySelector(".login").style.display = "none"
					}, 800)
			setTimeout(function() {
				removeClass(document.querySelector(".login"), "active")
				removeClass(document.querySelector(".sk-rotating-plane"),
						"active")
			 	document.querySelector(".login").style.display = "block";
				
				//通过id获取输入框的值
				var loginName=document.getElementById("loginName").value;
				var password=document.getElementById("password").value;
				
				//alert(password+" "+password)
				
				//实现登陆处理(get方式提交)	
			 	window.location.href="${pageContext.request.contextPath}/admin/login?loginName="+loginName+"&password="+password;

			}, 2000) 
		}
	</script>
	<div style="text-align: center;">
</body>

</html>