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
<title>驾校查看</title>
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
                  <li class="sub-menu active">
                      <a href="javascript:;" class="">
                          <i class="glyphicon glyphicon-search"></i>
                          <span>信息查看</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li ><a class="" href=<%=application.getContextPath()+"/yunguan/dslist2"%>>驾校信息查看</a></li>
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/coachlist"%>>教练信息查看</a></li>
                          <li class="active"><a class="" href=<%=application.getContextPath()+"/yunguan/studentlist"%>>学员信息查看</a></li>
                          <li><a class="" href=<%=application.getContextPath()+"/yunguan/carlist"%>>教练车信息查看</a></li>
                      </ul>
                  </li>
                  <li>
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

                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                       <tr>
                              <th>学员ID</th>
                              <th>学员姓名</th>
                              <th class="hidden-phone">联系方式</th>
                              <th class="hidden-phone">注册时间</th>
                              <th class="hidden-phone">所属驾校</th>
                              <th class="hidden-phone">所属教练</th>
                          </tr>
                          </thead>
                          <tbody>
            <s:iterator value="studentList"  var="k" >
   				<tr >
								<td>
								<s:property value="#k.sid"/> 															
								</td>
								<td>
								<s:property value="#k.sname"/> 		
								</td>
								<td>
								<s:property value="#k.sphone"/> 
								</td>
								<td>
								<s:property value="#k.sdate"/> 
								</td>
								<td>
								<s:property value="#k.dsname"/> 
								</td>
								<td>
								<s:property value="#k.tsname"/> 
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
  function getid(id) {
	  alert(111);	
	  alert(id);
	  }
  
  function mypost(){
 	   $.post(<%=application.getContextPath()+"/yunguan/punish"%>, {
 		    "p0" :name
 		}, function(data) {
 		  
 		   
 		});

 	   alert("操作成功");
  }
 
  </script>
   

</body>
</html>