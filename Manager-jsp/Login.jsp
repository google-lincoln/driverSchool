<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href=<%=application.getContextPath()+"/css/bootstrap.min.css" %>>
<link rel="stylesheet" type="text/css" href=<%=application.getContextPath()+"/css/bootstrap-reset.css" %>>
<link rel="stylesheet" type="text/css" href=<%=application.getContextPath()+"/assets/font-awesome.css" %>>
<link rel="stylesheet" type="text/css" href=<%=application.getContextPath()+"/css/style.css" %>>
<link rel="stylesheet" type="text/css" href=<%=application.getContextPath()+"/css/style-responsive.css" %>>
<script src=<%=application.getContextPath()+"js/jquery.js"%>></script>
<script src=<%=application.getContextPath()+"js/jquery-1.8.3.min.js"%>></script>
<script src=<%=application.getContextPath()+"js/bootstrap.min.js"%>></script>

</head>
<body class="login-body">
<div class="container">

      <form class="form-signin" action="tologin">
        <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <input type="text" class="form-control" name="username" id="username" placeholder="User ID" autofocus>
            <input type="password" class="form-control" name="password" id="password" placeholder="Password">
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>
            <button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>

        </div>

      </form>

    </div>
</body>
</html>