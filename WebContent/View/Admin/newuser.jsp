<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản trị hệ thống</title>
      <link href="BackEnd/css/bootstrap.min.css" rel="stylesheet">
      <link href="BackEnd/css/font-awesome.min.css" rel="stylesheet">
      <link href="BackEnd/css/admin.css" rel="stylesheet">
      <link href="BackEnd/css/introjs.min.css" rel="stylesheet">
      <script type="text/javascript" src="BackEnd/js/jquery-1.10.2.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/intro.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/admin.js"></script>
      <!--Hỗ trợ IE nhận dạng thẻ HTML5-->
      <!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
        <jsp:include page="adminheader.jsp"></jsp:include>
	    <jsp:include page="adminleft.jsp"></jsp:include>
             <div id="main">
            <ol class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
             <li class="active"><a href="user.html">Tài khoản</a></li>
               <li class="active"><a href="new-user.html">Thêm tài khoản mới</a></li>
            </ol>
            <div class="col-xs-12">
         <form id="admin-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="post" action="" role="form">
             <input name="id" type="hidden" value="0">
             <div class="form-group">
                 <label for="fullname" class="col-sm-3 control-label required">Tên hiển thị</label>
                 <div class="col-sm-9">
                     <input name="fullname" type="text" value="" class="form-control" id="fullname" placeholder="Tên hiển thị" required="" maxlength="255">
                 </div>
             </div>
             <div class="form-group">
                 <label for="email" class="col-sm-3 control-label required">Email</label>
                 <div class="col-sm-9">
                     <input name="email" type="email" value="" class="form-control" id="email" placeholder="Email" required="">
                 </div>
             </div>
             <div class="form-group">
                 <label for="pass" class="col-sm-3 control-label required">Mật khẩu</label>
                 <div class="col-sm-9">
                     <input name="pass" type="password" value="" class="form-control" id="pass" placeholder="Mật khẩu" required="">
                 </div>
             </div>
             <div class="form-group">
                 <label for="repass" class="col-sm-3 control-label required">Nhập lại mật khẩu</label>
                 <div class="col-sm-9">
                     <input name="repass" type="password" value="" class="form-control" id="repass" placeholder="Nhập lại mật khẩu" required="">
                 </div>
             </div>
             <div class="form-group">
                 <div class="col-sm-offset-3 col-sm-9">
                     <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</button>
                        <a class="btn btn-warning" href="#"><small><i class="fa fa-reply"></i></small> Trở về</a>
                 </div>
             </div>
         </form>
         </div>
         </div>
         <!--END #main-->
      </div>
   </body>
</html>
