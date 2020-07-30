<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阿婆私房菜</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/pages/web/css/registered.css"
	type="text/css">
	<script type="text/javascript">
			function  pwsCheck(){
				var a = document.getElementById("NewStaffPwd1");
				var b = document.getElementById("NewStaffPwd2");
				var pwdSpan = document.getElementById("pwdSpan");
	            if (a.value != b.value) {
	                //显示密码不一致，情况确认密码的输入框
	            	pwdSpan.innerHTML="<font color='red'>密码不一致</font>";
	            	b.value="";
	            }
			}
			
			function  pws2Check(){
				var pwdSpan = document.getElementById("pwdSpan");
	            pwdSpan.innerHTML="*";
			}
			
			
	</script>
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
<form action="${pageContext.request.contextPath}/users.do?method=register" method="post">
	<div id="regmain">
		<table border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th colspan="3">请填写用户信息(带<span>*</span>为必填项)
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td1">用户名：</td>
					<td class="td2"><input class="text" type="text"
						name="loginName" value="" placeholder="请输入用户名"></td>
					<td class="td2"><span>*</span>您用来登录的用户名</td>
				</tr>
				<tr>
					<td class="td1">密码：</td>
					<td class="td2"><input class="text" type="password" id="NewStaffPwd1"  required="required"
						name="password" value="" placeholder="请输入密码" onkeyup="value=value.replace(/[^\w\.\/]/ig,'');"  maxlength="6" ></td>
					<td class="td2"><span>*</span>长度最多6位，只能为英文或数字</td>
				</tr>
				<tr>
					<td class="td1">确认密码：</td>
					<td class="td2"><input class="text" type="password" id="NewStaffPwd2" required="required"
						name="zpassword" value="" placeholder="请输入确认密码" οnkeyup="this.value=this.value.replace(/\D/g,'')" onblur="pwsCheck();" onkeypress="pws2Check();"></td>
					<td class="td2"><span id="pwdSpan">*</span>请你将输入的密码再次输入</td>
				</tr>
				<tr>
					<td class="td1">真实姓名：</td>
					<td class="td2"><input class="text" type="text"
						name="userName" value="" placeholder="请输入真实姓名"></td>
					<td class="td2"><span>*</span>请你输入你的真实姓名</td>
				</tr>
				<tr>
					<td class="td1">性别：</td>
					<td class="td2"><input type="radio" name="sex" value="1"
						checked="true">男&nbsp;&nbsp; <input type="radio"
						name="sex" value="0">女</td>
					<td class="td2"><span>*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">年龄：</td>
					<td class="td2"><input class="text" type="number" name="age" onkeyup="value=value.replace(/[^\d]/g,'')"
						value="18"></td>
					<td class="td2"><span>*</span>请输入你的真实年龄</td>
				</tr>
				<tr>
					<td class="td1">身份证号：</td>
					<td class="td2"><input class="text" type="text" name="idCard" onkeyup="value=value.replace(/[^\d]/g,'')"
						placeholder="请输入身份证号"></td>
					<td class="td2"><span>*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">家庭住址：</td>
					<td class="td2"><input class="text" type="text" name="address"
						placeholder="请输入家庭住址"></td>
					<td class="td2"><span>*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">电话号码：</td>
					<td class="td2"><input class="text" type="text" name="phone"  onkeyup="value=value.replace(/[^\d]/g,'')"
						placeholder="请输入电话号码"></td>
					<td class="td2"><span>*</span>请填写你的真实信息</td>
				</tr>
				<tr>
					<td class="td1">电子邮箱：</td>
					<td class="td2"><input class="text" type="text" name="email"  onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"
						placeholder="请输入电子邮箱"></td>
					<td class="td2"><span>*</span>请填写你有效的邮件地址，以便于我们为你提供有效的服务</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3" style="text-align: center"><input id="btn"
						type="submit" value="提交"></td>
				</tr>
			</tfoot>
		</table>
	</div>
</form>
	<!-- 页面头部 -->
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>