<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page isELIgnored="false" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="../img/favicon.html">
<title>管理端-行业动态发布</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
<body>
	<section id="container" class="">
      <!--header start-->
      <header class="header white-bg">
        <div class="sidebar-toggle-box">
                <div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>
            </div>
            <!--logo start-->
            <a href="#" class="logo">欢迎登陆驾培管理系统<span>&nbsp;&nbsp;运管端</span></a>
            <!--logo end-->
          
            <!--            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~              -->
            <div class="top-nav ">
                <!--search & user info start-->
                <ul class="nav pull-right top-menu">
                    <li>
                        <input type="text" class="form-control search" placeholder="Search">
                    </li>
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" src="img/avatar1_small.jpg">
                            <span class="username">Jhon Doue</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li><a href="#"><i class=" icon-suitcase"></i>Profile</a></li>
                            <li><a href="#"><i class="icon-cog"></i> Settings</a></li>
                            <li><a href="#"><i class="icon-bell-alt"></i> Notification</a></li>
                            <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!--search & user info end-->
            </div>
      </header>
      <aside>
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
	</aside><section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
              <header class="panel-heading">
		<div class="col-md-10 column"> <br>
				<input class="btn btn-primary" type="button" size="20" name="schoolname" onclick="" data-toggle="modal" data-target="#postdialog" value="添加公告"/>	
				<%-- <span class="required">${aaa}</span> --%>		
				</div>
               </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th>标题</th>
                              <th class="hidden-phone">发布时间</th>
                              <th class="hidden-phone">内容</th>
                              <th class="hidden-phone">状态</th>
                              <th width="20%" >操作</th>
                          </tr>
                          </thead>
                          <tbody>
                        
   			  <c:forEach var="NEWS" items="${list}">
   				<tr >
   				<td>
				${NEWS.ntitle}															
			    </td>
								<td>
								${NEWS.ncontext}		
								</td>
								<td>
								${NEWS.ndate}
								</td>
								<td>
								${NEWS.nstate}
								</td>								
								<td class="hidden-phone">
								<div style="float:left">
								<input type="hidden" value=${NEWS.ntitle}>
								<button id=${NEWS.ntitle}!${NEWS.ncontext} class="btn btn-primary btn-xs" onclick="return getid(this.id)"> <i class="icon-pencil"></i></button>
								</div>
								
								<div style="float:left"><form action="delete">
								<input name="deletitle" type="hidden" value=${NEWS.ntitle}>
								<input type="submit" value="删除" class="btn btn-danger btn-xs">
								</form></div>
								
								</td>
								
				</tr>
   			</c:forEach>
                       
                          </tbody>
                          </table>
                      </section>
                  </div>
              </div>
              <!-- page end-->

          </section>
      </section>
      <!--main content end-->
  </section>
		
				<!-- 发布公告框 -->
<div class="modal fade" id="postdialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
  <!--   <form method="post" action="/templet/nsms/announcement"> -->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">发布行业动态</h4>
            </div>
            <div class="modal-body">
            <form method="post" action="insertnews">
  <div>标&nbsp;题： <input name="ntitle" type="text" class="form-control input-sm" id="ntitle" placeholder="请输入标题"><br>内容：</div>
  <div class="form-group">
    <textarea name="ncontext" class="form-control" rows="4" cols="8" name="ncontext" id="ncontext"></textarea>
  </div></form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
                <button type="submit" class="btn btn-success" onclick="mypost()">确定</button>
            </div>
        </div><!-- /.modal-content -->
     <!--  </form>   -->
    </div><!-- /.modal-dialog -->
</div>
<!-- 查看公告框 -->
<div class="modal fade" id="postdialog2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">修改公告</h4>
            </div>
            <div class="modal-body">
  <div>标&nbsp;题： <input  type="text" class="form-control input-sm" name="updatentitle" id="updatentitle" placeholder="请输入标题"><br>内容：</div>
  <div class="form-group">
    <textarea class="form-control" rows="4" cols="8" name="updatencontext" id="updatencontext"></textarea>
  </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
                <button type="submit" class="btn btn-success" id="readbtn" onclick="mypost2()">确定</button>
            </div>
        </div><!-- /.modal-content -->
     <!--  </form>   -->
    </div><!-- /.modal-dialog -->
</div>

	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>


    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

    <!--script for this page only-->
    <script src="js/dynamic-table.js"></script>
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
			var title = $("#ntitle").val();
			var context = $("#ncontext").val();
			if(title == "" || title == null || title == undefined)
				{
				    alter("标题不能为空");
				}else if(context == "" || context == null || context == undefined)
					{
					     alter("内容不能为空");
					}else{
						$.post("insertnews", {
							"ntitle" : title,
							"ncontext" : context
						}, function(data) {

						});
						$('#postdialog').modal('hide')
						alert("已发布成功");
					}
			
		}
		  var t="";
		  var oddtitle="";
		  /*修改公告 */
		  function getid(id) {
			  t=id;	
			  var res = new Array();
			  res = t.split("!");
			  var title = res[0];
			  var context = res[1];
			  oddtitle=res[0];
			   $("#updatentitle").val(title);
			   $("#updatencontext").val(context);
			 /*  $( "#postdialog2" ).dialog(); */
			 
			$("#postdialog2").modal('show');
			 
			  } 

		  function mypost2(){
			
				   $.post("update", {
			   			"updatentitle" :  $("#updatentitle").val(),
			   			"updatencontext" : $("#nupdatencontext").val(),
			   			"oddtitle" :oddtitle
			   		}, function(data) {
			   		  
			   		   
			   		});
				   $('#postdialog2').modal('hide')
			   	   alert("公告已修改成功"); 
			
			  
		  }
	</script>
</body>
</html>