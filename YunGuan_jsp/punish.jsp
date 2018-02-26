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
<title>Insert title here</title>
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
                  <li class="">
                      <a class="" href=<%=application.getContextPath()+"/yunguan/y"%>>
                          <i class="glyphicon glyphicon-home"></i>
                          <span>首页</span>
                      </a>
                  </li>
                  <li class="sub-menu active">
                      <a href="javascript:;" class="">
                          <i class="glyphicon glyphicon-cog"></i>
                          <span>驾校管理</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li   class="active"><a class="" href=<%=application.getContextPath()+"/yunguan/dslist"%>>驾校违规处罚</a></li>
                          <li ><a class="" href=<%=application.getContextPath()+"/yunguan/applylist"%>>驾校开通审核</a></li>
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
                  <li>
                      <a class="" href="announcement.html">
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

                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th>驾校ID</th>
                              <th>驾校名</th>
                              <th class="hidden-phone">法人代表</th>
                              <th class="hidden-phone">法人联系方式</th>
                              <th class="hidden-phone">驾校状态</th>
                              <th class="hidden-phone">操作</th>
                          </tr>
                          </thead>
                          <tbody>
           <s:iterator value="dsList"  var="k" >
   				<tr >
								<td>
								<s:property value="#k.dsid"/> 															
								</td>
								<td>
								<s:property value="#k.dsname"/> 		
								</td>
								<td>
								<s:property value="#k.dsbelongname"/> 
								</td>
								<td>
								<s:property value="#k.dsbelongphone"/> 
								</td>
								<td>
								<s:property value="#k.dsstate"/> 
								</td>
								 <!-- <td class="hidden-phone"><a href="" onclick="setname()" data-toggle="modal" data-target="#postdialog" onclick="return getid(this.id)"><i class="glyphicon glyphicon-edit"></i><label>处罚</label></a></td></td> -->
								<td>
								<input id=<s:property value="#k.dsname"/>  type="button" value="处罚" class="btn btn-primary" onclick="return getid(this.id)">
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

         <!-- 处罚框 -->
<div class="modal fade" id="postdialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
  <!--   <form method="post" action="/templet/nsms/announcement"> -->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">驾校违规处罚</h4>
            </div>
            <div class="modal-body">
            
            
            <div class="col-lg-10">
                                          <div class="row">
                                              <div class="col-lg-3">
                                            <h5>   处罚类型：</h5>
                                              </div>
                                              <div class="col-lg-5">
  <select class="form-control m-bot15" id="selectP1" onchange="p1_onChange()">
                                              <option>选择处罚类型</option>
                                              <option>罚款</option>
                                              <option>暂停招生</option>
                                              <option>停顿整改</option>
  </select>
                                              </div>
                                          </div>
                                      </div>
                                      
              <div class="col-lg-10"><div class="row">
                                              <div class="col-lg-3">
                                            <h5>处罚结果：</h5>
                                              </div>
                                              <div class="col-lg-5">
  <select class="form-control m-bot15" id="selectP2" onchange="p2_onChange()">
                                              <option>选择处罚结果</option>

  </select>
                                              </div>
                                         </div></div>
                                       <br>

  <div class="form-group">
    <textarea class="form-control" rows="3" cols="8" name="postcontext" id="postcontext"></textarea>
  </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
                <button type="submit" class="btn btn-success" onclick="mypost()">确定</button>
            </div>
        </div><!-- /.modal-content -->
     <!--  </form>   -->
    </div><!-- /.modal-dialog -->
</div>

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
  var name="";
function getid(id) {
	  
	  alert(123);
	  name=id;	
	  alert(id);
	  $("#postdialog").modal('show'); 
	  }
  var p = new Array();
  p[0] = new Array("1000", "3000", "5000", "8000" ,"10000", "30000", "50000");
  p[1] = new Array("3天", "5天", "10天", "15天", "20天", "30天");
  $("#selectP1").on("change",function(){
	  var str = '';  
	  if ($('#selectP1 option:selected').val()=="暂停招生") {
		  str += "<option id = '123'>3天</option>";  
		  str += "<option id = '123'>5天</option>";
		  str += "<option id = '123'>10天</option>";  
		  str += "<option id = '123'>20天</option>";
		  str += "<option id = '123'>30天</option>"; 
		  $("#selectP2").empty(); 
		  $("#selectP2").append(str);  
	}else if ($('#selectP1 option:selected').val()=="罚款") {
		  str += "<option id = '123'>1000元</option>";
		  str += "<option id = '123'>2000元</option>";
		  str += "<option id = '123'>5000元</option>";
		  str += "<option id = '123'>8000元</option>";
		  str += "<option id = '123'>10000元</option>";
		  str += "<option id = '123'>30000元</option>";
		  str += "<option id = '123'>50000元</option>";
		  $("#selectP2").empty(); 
		  $("#selectP2").append(str); 
	}
  });
  
  
   function mypost(){
	  var p1 = $('#selectP1 option:selected').val()
 	   var p2 = $('#selectP2 option:selected').val();
 	   var p3 = $('#postcontext').val();
 	  <%--  $.post(<%=application.getContextPath()+"/yunguan/punish"%>, {
 		    "p0" :name,
 		    "p1" : p1,
 			"p2" : p2,
 			"p3" : p3
 		}, function(data) {
 		  
 		   
 		});--%>
 		 $.post("/DriverSchool/yunguan/punish", {
 			"p0" :name,
 		    "p1" : p1,
 			"p2" : p2,
 			"p3" : p3
 			}, function(data) {
 			  
 			});
 	   $('#postdialog').modal('hide') 
 	   alert("操作成功");
  } 
  </script>
   

</body>
</html>