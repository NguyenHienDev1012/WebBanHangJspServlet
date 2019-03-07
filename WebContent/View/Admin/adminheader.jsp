<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin header</title>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="AdminForward"><i class="fa fa-cogs"></i> Quản
			trị hệ thống</a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" style="color:orange; font-size: 20px">Chào:<%=session.getAttribute("sessionAdmin") != null ? session
					.getAttribute("sessionAdmin") : ""%>
					<img alt="" src="BackEnd/images/admin.jpg"
					style="width: 30px; height: 30px; border-radius: 50%;"
					class="image"> <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="fa fa-user"></i> Chỉnh sửa tài
							khoản</a></li>
					<li><a href="LogoutController"><i class="fa fa-power-off"></i> Đăng xuất</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- /.navbar-collapse --> </nav>
</body>
</html>