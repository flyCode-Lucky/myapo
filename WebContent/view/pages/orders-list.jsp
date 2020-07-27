<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta http-equive="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>阿婆私房菜- 销售订单管理</title>
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
				销售订单管理 <small>订单查询</small>
			</h1>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/view/pages/main.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="">销售订单管理</a></li>
				<li class="active">订单查询</li>
			</ol>
			</section>
			<!-- 内容头部 /-->
				<!-- 正文区域 -->
				<section class="content">

				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">订单查询</h3>
					</div>
					<div class="box-tools text-center">
						<form action="${pageContext.request.contextPath}/" method="post">
							<div class="tab-pane active">
								<div class="row data-type">
									<div class="col-md-12"></div>
									<div class="row data-type">
										<div class="col-md-1 title">按用户名查询</div>
										<div class="col-md-2 data text">
											<input type="text" name="userName" class="form-control"
												placeholder="请输入用户名" value="">
										</div>
										<div class="col-md-1 title">按菜品名称查询</div>
										<div class="col-md-2 data text">
											<input type="text" name="dishesName" class="form-control"
												placeholder="请输入菜品名称" value="">
										</div>
										<div class="col-md-1 title">按销售日期查询</div>
										<div class="col-md-3 data">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input type="text" name="orderTime"
													class="form-control pull-right" id="datepicker">
											</div>
										</div>
										<div class="col-md-2 data">
											<button type="submit" class="btn btn-block btn-info">查询</button>
										</div>
									</div>
								</div>
							</div>
						</form>

						<!--数据列表-->
						<table id="dataList"
							class="table table-bordered table-striped table-hover dataTable">
							<thead>
								<tr>
									<th class="text-center" style="padding-right: 0px;"><input
										id="selall" type="checkbox" class="icheckbox_square-blue">
									</th>
									<th class="text-center">订单ID</th>
									<th class="text-center">真实姓名</th>
									<th class="text-center">联系方式</th>
									<th class="text-center">家庭住址</th>
									<th class="text-center">菜品名称</th>
									<th class="text-center">订购数量</th>
									<th class="text-center">单价(元)</th>
									<th class="text-center">合计(元)</th>
									<th class="text-center">订购时间</th>
									<th class="text-center">是否派送</th>
									<th class="text-center">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><input name="ids" class="ids"
											type="checkbox" value=""></td>
									<td class="text-center">1</td>
									<td class="text-center">2</td>
									<td class="text-center">3</td>
									<td class="text-center">4</td>
									<td class="text-center">5</td>
									<td class="text-center">6</td>
									<td class="text-center">7</td>
									<td class="text-center">8</td>
									<td class="text-center">9</td>
									<td class="text-center">10</td>
									<td class="text-center">
										<button type="button" class="btn bg-olive  btn-xs bg-olive">确认</button>
										<button type="button" class="btn bg-olive btn-xs bg-maroon">修改</button>
									</td>
							   </tr>
								
							</tbody>
						</table>
						<!--数据列表/-->
							</div>
			</div>
			</section>
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

				</div>


				<script
					src="${pageContext.request.contextPath}/view/plugins/jQuery/jquery-2.2.3.min.js"></script>
				<script
					src="${pageContext.request.contextPath}/view/plugins/jQueryUI/jquery-ui.min.js"></script>
				<script>
					$.widget.bridge('uibutton', $.ui.button);
				</script> <script
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

						//初始化日期控件
						$('#datepicker').datepicker({
							format : "yyyy-mm-dd",
							autoclose : true,
							language : 'zh-CN'
						});

					});
				</script>
</body>

</html>