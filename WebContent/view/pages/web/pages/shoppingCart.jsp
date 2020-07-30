<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>阿婆私房菜</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/pages/web/css/shoppingcart.css"
	type="text/css">
</head>
<body>


	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>

	<div id="shoppingmain">
		<table border="1" cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th colspan="5">我的订餐信息列表</th>
				</tr>
				<tr>
					<th><input type="checkbox" name="all" id="all"
						onclick="checkAll()"></th>
					<th>菜品名称</th>
					<th>单价</th>
					<th>数量</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${cars }" var="car">
			
				<tr>
					<td><input type="checkbox" name="ids" class="ids" value="${car.id }"
						onclick="checkValue()"></td>
					<td>${car.dishesName }</td>
					<td>${car.price }</td>
					<td>${car.number }</td>
					<td><a href="${pageContext.request.contextPath}/shop/delete?id=${car.id}&userId=${sessionScope.users.id}">取消</a></td>
				</tr>
				
			</c:forEach>
				
				

			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">小计：<span class="textsp">96</span>&nbsp;&nbsp;元&nbsp;&nbsp;&nbsp;&nbsp;
						共：<span class="textsp">4</span>&nbsp;&nbsp;件
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<input type="button" id="btnok" value="全部提交"
						onclick="window.location.href='${pageContext.request.contextPath}/shop/addall'"
						>
						<input type="button" id="btreset" value="全部取消"></td>
				</tr>
			</tfoot>

		</table>
	</div>

	<!-- 页面底部 -->
	<jsp:include page="foot.jsp"></jsp:include>

	<script type="application/javascript">
    //全选、全不选
    function checkAll(){
        var all=document.getElementById('all');//获取到点击全选的那个复选框的id
        var ids=document.getElementsByName('ids');//获取到复选框的名称
        //因为获得的是数组，所以要循环 为每一个checked赋值
        for(var i=0;i<ids.length;i++){
            ids[i].checked=all.checked;
        }
    }
</script>
</body>
</html>