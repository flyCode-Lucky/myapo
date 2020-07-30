<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阿婆私房菜</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/view/pages/web//css/main.css" type="text/css">
</head>
<body>
	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main">
		<div id="left">
		<c:forEach  items="${dishes }" var="d">
			<div class="ord">
				<dl>
					<dt>
						<img src="${pageContext.request.contextPath}/${d.pic}">
					</dt>
					<dd>菜名:${d.dishesName }</dd>
					<dd>市场价:￥${d.marketPrice }</dd>
					<dd>
						会员价:<span class="vip">￥${d.vipPrice }</span>
					</dd>
					<dd>配料:${d.material }</dd>
					<dd>菜品类型:${d.dishesType.typeName }</dd>
				</dl>
				<p>
					<a href="${pageContext.request.contextPath}/shop/shop?userId=${sessionScope.users.id}&dishesName=${d.dishesName}&price=${d.vipPrice}"> 
						<img src="${pageContext.request.contextPath}/view/pages/web//img/shcar.png">
					</a>
				</p>
			</div>
	</c:forEach>
		</div>
		<div id="right">
			<div class="dv">
				<ul>
					<li class="li1"><img src="${pageContext.request.contextPath}/view/pages/web//img/notice.png"> <span
						class="title">餐厅公告</span></li>
					<li class="li2">
						<ul>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
							<li><span class="sp1">&gt;</span> <span><a href="">
										本店特色《咸菜肉饭》</a></span> <span class="sp3">2019-12-12</span></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="dv">
				<ul>
					<li class="li1"><img src="${pageContext.request.contextPath}/view/pages/web/img/sales.png"> <span
						class="title">销售排行榜</span></li>
					<li class="li2">
						<ul>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
							<li><span class="sp1">&gt;</span> <span class="sp2">糖醋排骨</span>
								<span class="sp3">已售4次</span></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 页面头部 -->
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>