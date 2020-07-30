<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="wolves"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阿婆私房菜</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/pages/web/css/queryorders.css"
	type="text/css">
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<div id="ordermain">
		<table id="tab1" border="1" cellpadding="0" cellspacing="0">
			<form action="" method="post">
				<tr>
					<td>按菜品名称查询：<input type="text" class="input" name="dishesName"
						value="${sessionScope.dishesName }"> 按销售日期查询：<input type="date" class="input"
						name="orderTime" value=""> <input type="submit" id="btn"
						value="查询">
					</td>
				</tr>
			</form>
			<tr>
				<td>
					<a href="">未派送订单</a>&nbsp;&nbsp;
					<a href="">已派送订单</a></td>
			</tr>
		</table>

		<table id="tab2" border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th colspan="9">订单查询结果信息列表</th>
				</tr>
				<tr>
					<th>菜品名称</th>
					<th>真实姓名</th>
					<th>订购电话</th>
					<th>配送地址</th>
					<th>订购数量</th>
					<th>单价(元)</th>
					<th>合计(元)</th>
					<th>订购时间</th>
					<th>是否派送</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${pm.datas }" var="o">
				<tr>
					<td>${o.dishesName }</td>
					<td>${o.users.userName }</td>
					<td>${o.users.phone }</td>
					<td>${o.users.address }市</td>
					<td>${o.number }</td>
					<td>${o.price }</td>
					<td>${o.numPrice }</td>
					<td><wolves:formatDate value="${o.orderTime }"/></td>
					<td>${o.isDelivery}</td>
				</tr>
			</c:forEach>	
			<!-- 分页的处理 -->
		<tr>
			<td colspan="10">
				<a href="${pageContext.request.contextPath}/orders/findall?pageNo=1&userId=${sessionScope.users.id}">首页</a>
				<c:if test="${pm.pageNo > 1 }">
					<a href="${pageContext.request.contextPath}/orders/findall?pageNo=${pm.pageNo - 1}&userId=${sessionScope.users.id}">上一页</a>
				</c:if>
				<c:if test="${pm.pageNo < pm.totalpage }">
					<a href="${pageContext.request.contextPath}/orders/findall?pageNo=${pm.pageNo + 1}&userId=${sessionScope.users.id}">下一页</a>
				</c:if>
				<a href="${pageContext.request.contextPath}/orders/findall?pageNo=${pm.totalpage}&userId=${sessionScope.users.id}">尾页</a>
			</td>
		</tr>
			</tbody>
		</table>
	</div>
	<!-- 页面头部 -->
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>