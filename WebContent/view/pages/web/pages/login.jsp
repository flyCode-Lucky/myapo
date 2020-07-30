<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阿婆私房菜</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/pages/web/css/login.css"
	type="text/css">
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>

	<div id="loginmain">
	<form action="${pageContext.request.contextPath}/users/login" method="get">
		<div id="left">
			<span style="color: red;text-align: center; font-size: 10px">${msg }</span>
			<p>
				登录帐号：<input class="text" type="text"  name="loginName">
			</p>
			<p>
				登录密码：<input class="text" type="password" name="password">
			</p>
			<p>
				<input class="btn" type="submit" value="登  录">
			</p>
		</div>
	</form>
		<div id="right">
			<ul>
				<li><span>*</span>&nbsp;&nbsp;如果你已经是会员请在左侧登录。</li>
				<li><span>*</span>&nbsp;&nbsp;如果你还没有注册会员， <a id="zc"
					href="${pageContext.request.contextPath}/view/pages/web/pages/registered.jsp">
						点这里注册新会员。</a></li>
				<li><span>*</span>&nbsp;&nbsp;如果你忘记了密码，<a id="cz" href="#">
						点这里重设一个密码。</a></li>
			</ul>
		</div>
	</div>
	<div style="padding-top: 2%">
		<!-- 页面头部 -->
		<jsp:include page="foot.jsp"></jsp:include>
	</div>

</body>
</html>