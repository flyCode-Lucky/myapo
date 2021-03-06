<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta http-equive="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>阿婆私房菜- 修改密码</title>
<meta name="description" content="阿婆私房菜">
<meta name="keywords" content="阿婆私房菜">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">
			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				系统用户管理 <small>修改密码</small>
			</h1>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/view/pages/main.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="">系统用户管理</a></li>
				<li class="active">修改密码</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${pageContext.request.contextPath}/admin/update" method="post">
				<!-- 正文区域 -->
				<section class="content">

				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">修改管理员信息</h3>
					</div>
					<!-- 表单内容 -->
					<div style="width:40%; margin: 0 auto; padding-bottom: 20px;">
					<p style="text-align: center; color:red; font-size:16px;"></p>
					<!--tab内容-->
					<div class="tab-content">
						<!--label显示的内容-->
						<div class="tab-pane active" id="tab-label">
							<div class="row data-type">
								<div class="col-md-3 title">原始密码</div>
								<div class="col-md-9 data">
									<input type="password" id="password" name="password" class="form-control"
										placeholder="请输入密码" value="">
								</div>
								<div class="col-md-3 title">新密码</div>
								<div class="col-md-9 data">
									<input type="password" id="newPassword" name="newPassword" class="form-control"
										placeholder="请输入新密码" value="">
								</div>
								<div class="col-md-3 title">确认新密码</div>
								<div class="col-md-9 data">
									<input type="password" id="rpassword" name="rpassword" class="form-control"
										placeholder="请输入新密码" value="">
								</div>
							</div>
							<p style="color:red;font-size: 20px;text-align: center;">${msg1}</p>
						</div>
						</div>
						

						<!--订单信息/-->
						<!--工具栏-->
						<div class="box-tools text-center">
							<button type="submit" class="btn bg-maroon">保存</button>
							<button type="button" class="btn bg-default"
								onclick="history.back(-1);">返回</button>
						</div>
						<!--工具栏/-->
				</section>
				<!-- 正文区域 /-->
			</form>
		</div>
	</div>
	<!-- 内容区域 /-->

	<!-- 底部导航 -->
	<footer class="main-footer">
	<div class="pull-right hidden-xs">
		<b>Version</b> 1.0.8
	</div>
	<strong>Copyright &copy; 2014-2017 <a
		href="http://sybcloud.com">研究院研发部</a>.
	</strong> All rights reserved. </footer>
	<!-- 底部导航 /-->



	<script
		src="${pageContext.request.contextPath}/view/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {
			$('#datepicker-a3').datetimepicker({
				format : "yyyy-mm-dd hh:ii",
				autoclose : true,
				todayBtn : true,
				language : "zh-CN"
			});
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");
			$("#datepicker-a3").datetimepicker({
				format : "yyyy-mm-dd hh:ii",

			});

		});
	</script>


</body>

</html>