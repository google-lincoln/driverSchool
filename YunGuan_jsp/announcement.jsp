<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
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
<title>运管端-发布公告</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
    
</head>
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
      <!--header end-->
      
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">
                  <li >
                      <a class="" href=<%=application.getContextPath()+"/yunguan/y"%>>
                          <i class="glyphicon glyphicon-home"></i>
                          <span>首页</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="glyphicon glyphicon-cog"></i>
                          <span>驾校管理</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/dslist"%>>驾校违规处罚</a></li>
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/applylist"%>>驾校开通审核</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="glyphicon glyphicon-search"></i>
                          <span>信息查看</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                        <li><a class="" href=<%=application.getContextPath()+"/yunguan/dslist2"%>>驾校信息查看</a></li>
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/coachlist"%>>教练信息查看</a></li>
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/studentlist"%>>学员信息查看</a></li>
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/carlist"%>>教练车信息查看</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu active">
                      <a class="" href=<%=application.getContextPath()+"/yunguan/announcement2"%>>
                          <i class="glyphicon glyphicon-pencil"></i>
                          <span>发布公告</span>
                      </a>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
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
                              <th>序号</th>
                              <th>公告标题</th>
                              <th class="hidden-phone">发布时间</th>
                              <th class="hidden-phone">公告内容</th>
                              <th width="20%" >操作</th>
                          </tr>
                          </thead>
                          <tbody>
                        
   			  <s:iterator value="anceList"  var="k" >
   				<tr >
   				<td>

								<s:property value="#k.atitle"/> 															
								</td>
								<td>
								<s:property value="#k.atitle"/> 															
								</td>
								<td>
								<s:property value="#k.acontext"/> 		
								</td>
								<td>
								<s:property value="#k.adate"/> 
								</td>								
								<td class="hidden-phone">
								<div style="float:left"><form action=<%=application.getContextPath()+"/yunguan/readA"%>>
								<input type="hidden" value=<s:property value="#k.atitle"/>>
								<input id=<s:property value="#k.atitle"/>!<s:property value="#k.acontext"/>  type="button" value="查看/修改" class="btn btn-success" onclick="return getid(this.id)">&nbsp;&nbsp;
								</form></div>
								
								<div style="float:left"><form action=<%=application.getContextPath()+"/yunguan/deleteA"%>>
								<input name="deletitle" type="hidden" value=<s:property value="#k.atitle"/>>
								<input type="submit" value="删除" class="btn btn-success">&nbsp;&nbsp;
								</form></div>
								
							<!-- 	<div style="float:left"><form action="/DriverSchool/yunguan/updateA">
								<input type="hidden" value=<s:property value="#k.atitle"/>>
								<input type="submit" value="修改" class="btn btn-success">
								</form></div> -->
								
								<!-- <a id=<s:property value="#k.atitle"/> href="" onclick="return getid(this.id)" data-toggle="modal" data-target="#postdialog"><i class="glyphicon glyphicon-search"></i><label>查看</label></a>&nbsp;&nbsp;
								<a id=<s:property value="#k.atitle"/> href="" onclick="return getid(this.id)" data-toggle="modal" data-target="#postdialog"><i class="glyphicon glyphicon-pencil"></i><label>修改</label></a>&nbsp;&nbsp;
								<a id=<s:property value="#k.atitle"/> href="" onclick="return getid(this.id)" data-toggle="modal" data-target="#postdialog"><i class="glyphicon glyphicon-trash"></i><label>删除</label></a> -->
								</td>
								
				</tr>
   			</s:iterator>
                       
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

    <!-- js placed at the end of the document so the pages load faster -->
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
  var t="";
  var oddtitle="";
  /* 查看、修改公告 */
  function getid(id) {
	  t=id;	
	  var res = new Array();
	  res = t.split("!");
	  var title = res[0];
	  var context = res[1];
	  oddtitle=res[0];
	   $(readtitle).val(title);
	   $(readcontext).val(context);
	 /*  $( "#postdialog2" ).dialog(); */
	 
	$("#postdialog2").modal('show');
	 
	   
	  
	  
	  } 
  function setdisabled() {
	  if ($("#readcontext").prop("disabled")==false) {
		  $("#readtitle").attr("disabled", true);
		   $("#readcontext").attr("disabled", true); 
	  }else {
		  $("#readtitle").attr("disabled", false);
		   $("#readcontext").attr("disabled", false); 
	}
	  
  }
  function mypost2(){
	  if ($("#readcontext").prop("disabled")==false) {
		   $.post("/DriverSchool/yunguan/updateA", {
	   			"updatetitle" :  $("#readtitle").val(),
	   			"updatecontext" : $("#readcontext").val(),
	   			"oddtitle" :oddtitle
	   		}, function(data) {
	   		  
	   		   
	   		});
		   $('#postdialog2').modal('hide')
	   	   alert("公告已修改成功"); 
	}
	  
  }
      //owl carousel
      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
         
      });
      
      
      /* 发帖 */
    $(function() {
   	   $('#postdialog').modal('hide')
   	}); 
      function mypost() {
   	   var title = $("#posttitle").val();
   	   var context = $("#postcontext").val();
   	  /* alert(context); */ 
   	   $.post("/DriverSchool/yunguan/announcement", {
   			"posttitle" : title,
   			"postcontext" : context
   		}, function(data) {
   		  
   		   
   		});
   	   $('#postdialog').modal('hide')
   	 alert("公告已发布成功"); 
      } 
  </script>


<!-- 发布公告框 -->
<div class="modal fade" id="postdialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
  <!--   <form method="post" action="/templet/nsms/announcement"> -->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">发布公告</h4>
            </div>
            <div class="modal-body">
            <form method="post" action="/DriverSchool/yungguan/announcement">
  <div>标&nbsp;题： <input name="posttitle" type="text" class="form-control input-sm" id="posttitle" placeholder="请输入公告标题"><br>内容：</div>
  <div class="form-group">
    <textarea name="posttcontext" class="form-control" rows="4" cols="8" name="postcontext" id="postcontext"></textarea>
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
  <!--   <form method="post" action="/templet/nsms/announcement"> -->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">查看/修改公告</h4>
            </div>
            <div class="modal-body">
            <button type="submit" class="btn btn-danger" onclick="setdisabled()">修改内容</button>
  <div>标&nbsp;题： <input  type="text" class="form-control input-sm" id="readtitle" placeholder="请输入公告标题" disabled="true"><br>内容：</div>
  <div class="form-group">
    <textarea class="form-control" rows="4" cols="8" name="postcontext" id="readcontext" disabled="true"></textarea>
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
</body>
</html>