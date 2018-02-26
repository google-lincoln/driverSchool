<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="text/css"
	href=<%=application.getContextPath() + "/img/favicon.html"%>>
<title>管理端-友情链接</title>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/css/bootstrap.min.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/css/bootstrap-reset.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/assets/font-awesome/css/font-awesome.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/css/owl.carousel.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/css/style.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=application.getContextPath() + "/css/style-responsive.css"%>>
</head>
<body>
	<div id="container" class="">
		<div class="header white-bg">
			<div class="sidebar-toggle-box">
				<div data-original-title="Toggle Navigation" data-placement="right"
					class="icon-reorder tooltips"></div>
			</div>
			<a href="#" class="logo">欢迎登陆驾培管理系统<span>&nbsp;&nbsp;管理端</span></a>
			<div class="top-nav ">
				<ul class="nav pull-right top-menu">
					<li><input type="text" class="form-control search"
						placeholder="Search"></li>
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img alt=""
							src="../img/avatar1_small.jpg"> <span class="username">Jhon
								Doue</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li><a href="#"><i class=" icon-suitcase"></i>Profile</a></li>
							<li><a href="#"><i class="icon-cog"></i> Settings</a></li>
							<li><a href="#"><i class="icon-bell-alt"></i>
									Notification</a></li>
							<li><a href="login.html"><i class="icon-key"></i> Log
									Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div>
			<div id="sidebar" class="nav-collapse ">
				<ul class="sidebar-menu">
					<li class="sub-menu active"><a href="javascript:;" class=""> <i
							class="glyphicon glyphicon-cog"></i> <span>门户管理</span> <span
							class="arrow"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="allnews">行业动态发布</a></li>
							<li><a class="" href="alllink">友情链接管理</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="glyphicon glyphicon-search"></i> <span>统计报表</span> <span
							class="arrow"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="school.html">学员人数统计</a></li>
							<li><a class="" href="coach.html">科目考试人数统计</a></li>
						</ul></li>
					<li class="sub-menu"><a class=""
						href="javascript:;"> <i
							class="glyphicon glyphicon-pencil"></i> <span>系统管理</span> <span
							class="arrow"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="school.html">日志查询</a></li>
							<li><a class="" href="coach.html">参数管理</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon-th"></i> <span>日常工作</span> <span class="arrow"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="basic_table.html">学员管理</a></li>
							<li><a class="" href="dynamic_table.html">教练管理</a></li>
							<li><a class="" href="dynamic_table.html">教练车管理</a></li>
							<li><a class="" href="dynamic_table.html">驾校管理</a></li>
							<li><a class="" href="dynamic_table.html">题库管理</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div id="main-content">
			<div class="wrapper">

				<div class="row">
					<div class="col-lg-12">
						<div class="panel">
							<div class="panel-heading">

								<div class="col-md-12 column">
									<div class="row clearfix">
										<div class="col-md-3 column">
											<input type="text" class="form-control input-sm" id="name"
												placeholder="请输入标题">
										</div>
										<div class="col-md-3 column">
											<input class="btn btn-success" type="button" size="20"
												name="schoolname" onclick="" value="Serch" />
										</div>
										<div class="col-md-4 column"></div>
										<div class="col-md-2 column">
											<input class="btn btn-primary" type="button" size="20"
												name="schoolname" onclick="" data-toggle="modal"
												data-target="#ndialog" value="添加" />
										</div>
									</div>
								</div>


							</div>
							<table class="table table-striped border-top" id="sample_1">
								<thead>
									<tr>
										<th>名称</th>
										<th class="hidden-phone">网址</th>
										<th class="hidden-phone">状态</th>
										<th class="hidden-phone">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="FRIENDLINK" items="${list}">
									<tr class="odd gradeX">
										<td>${FRIENDLINK.fname}</td>
										<td class="hidden-phone">${FRIENDLINK.web}</td>
										<td class="hidden-phone">${FRIENDLINK.status}</td>
										 <td>
                                      <button class="btn btn-success btn-xs"><i class="icon-ok"></i></button>
                                      <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                  </td>
									</tr>
                                </c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- 公告框 -->
				<div class="modal fade" id="ndialog" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">发布</h4>
							</div>
							<div class="modal-body">
								<div>
									标&nbsp;题： <input type="text" class="form-control input-sm"
										name="fname" id="fname" placeholder="请输入链接名称"><br>内容：
								</div>
								<div class="form-group">
									<input type="text" class="form-control" rows="4" cols="8"
										name="web" id="web">
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">取消</button>
								<button type="submit" class="btn btn-success" onclick="mypost()">确定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script src=<%=application.getContextPath() + "/js/jquery.js"%>></script>
	<script
		src=<%=application.getContextPath() + "/js/jquery-1.8.3.min.js"%>></script>
	<script src=<%=application.getContextPath() + "/js/bootstrap.min.js"%>></script>
	<script
		src=<%=application.getContextPath() + "/js/jquery.scrollTo.min.js"%>></script>
	<script
		src=<%=application.getContextPath() + "/js/jquery.nicescroll.js"%>></script>
	<script
		src=<%=application.getContextPath() + "/js/jquery.sparkline.js"%>></script>
	<script
		src=<%=application.getContextPath() + "/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"%>></script>
	<script src=<%=application.getContextPath() + "/js/owl.carousel.js"%>></script>
	<script
		src=<%=application.getContextPath() + "/js/jquery.customSelect.min.js"%>></script>

	<script src=<%=application.getContextPath() + "/js/common-scripts.js"%>></script>

	<script
		src=<%=application.getContextPath() + "/js/sparkline-chart.js"%>></script>
	<script src=<%=application.getContextPath() + "/js/easy-pie-chart.js"%>></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel({
				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem : true

			});
		});

		$(function() {
			$('select.styled').customSelect();

		});

		$(function() {
			$('#postdialog').modal('hide')
		});
		function mypost() {
			var fname = $("#fname").val();
			var web = $("#web").val();
			alert(web);
			$.post("/DriverSchool/manager/insertweb", {
				"fname" : fname,
				"web" : web
			}, function(data) {

			});
			$('#postdialog').modal('hide')
			alert("已发布成功");
		}
	</script>
</body>
</html>