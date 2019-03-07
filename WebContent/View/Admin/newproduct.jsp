<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vi">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản trị hệ thống</title>
      <link rel="shortcut icon" href="favicon.png">
      <link href="BackEnd/css/bootstrap.min.css" rel="stylesheet">
      <link href="BackEnd/css/font-awesome.min.css" rel="stylesheet">
      <link href="BackEnd/css/admin.css" rel="stylesheet">
      <link href="BackEnd/css/introjs.min.css" rel="stylesheet">
      <script type="text/javascript" src="BackEnd/js/jquery-1.10.2.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/intro.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/admin.js"></script>
      <!--Hỗ trợ IE nhận dạng thẻ HTML5-->
   </head>
   <body>
     <jsp:include page="adminheader.jsp"></jsp:include>
     <jsp:include page="adminleft.jsp"></jsp:include>
         <div id="main">
            <ol class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
            <li class="active"><a href="product.html">Sản phẩm</a></li>
            <li class="active"><a href="new-product.html">Thêm sản phẩm mới</a></li>
         </ol>
         <div class="col-xs-12">
            <form id="admin-form" class="form-horizontal col-xl-9 col-lg-10 col-md-12 col-sm-12" method="post" action="#" enctype="multipart/form-data" role="form">
               <input name="id" type="hidden" value="0">
               <div class="form-group">
                  <label for="type_product" class="col-sm-3 control-label required">Loại sản phẩm</label>
                  <div class="col-sm-9">
                     <select name="type_product" id="type_product" class="form-control">
                     <option value="">Chọn danh mục</option>
                     <option value="">Loại sản phẩm 1</option>
                     <option value="">Loại sản phẩm 2</option>
                     <option value="">Loại sản phẩm 3</option>
                     </select>
                  </div>
               </div>
               <div class="form-group">
                  <label for="masp" class="col-sm-3 control-label required">Mã sản phẩm</label>
                  <div class="col-sm-9">
                     <input name="masp" type="text" value="" class="form-control" id="masp" placeholder="Mã sản phẩm" required="" maxlength="100">
                  </div>
               </div>
               <div class="form-group">
                  <label for="title" class="col-sm-3 control-label required">Tên sản phẩm</label>
                  <div class="col-sm-9">
                     <input name="title" type="text" value="" class="form-control" id="title" placeholder="Tên sản phẩm ( ~ 70 ký tự )" required="" maxlength="100">
                  </div>
               </div>
               <div class="form-group">
                  <label for="keywords" class="col-sm-3 control-label">Từ khóa</label>
                  <div class="col-sm-9">
                     <input name="keywords" type="text" value="" class="form-control" id="keywords" placeholder="meta keywords" maxlength="255">
                  </div>
               </div>
               <div class="form-group">
                  <label for="description" class="col-sm-3 control-label">Mô tả</label>
                  <div class="col-sm-9">
                     <textarea name="description" class="form-control" id="description" placeholder="meta description ( ~ 160 ký tự )" maxlength="255"></textarea>
                  </div>
               </div>
               <div class="form-group">
                  <label for="price" class="col-sm-3 control-label required">Giá</label>
                  <div class="col-sm-9">
                     <input name="price" type="text" value="" class="form-control" id="price" placeholder="Giá sản phẩm (đơn vị: VNĐ)" maxlength="255">
                  </div>
               </div>
               <div class="form-group">
                  <label for="content" class="col-sm-3 control-label">Nội dung</label>
                  <div class="col-sm-9">
                       <textarea name="content" rows="5" class="form-control ckeditor" id="content" placeholder="Mô tả cho sản phẩm" ></textarea>
                   </div>
                </div>
                  <div class="form-group" >
                     <label class="col-sm-3 control-label">Ảnh</label>
                      <div class="col-sm-9 col-sm-offset-3">
                      <ul class="nav nav-tabs" role="tablist">
                       <li class="active"><a href="#img-file" role="tab" data-toggle="tab">Upload từ máy tính</a></li>
                       <li><a href="#img-url" role="tab" data-toggle="tab">Lấy từ URL</a></li>
                     </ul>
                      <div class="tab-content" style="margin-top: 15px; min-height: 100px;">
                          <div class="tab-pane active" id="img-file">
                              <label for="image" class="col-sm-3 control-label">Từ máy tính</label>
                              <div class="col-sm-9">
                                 <input name="image" type="file" class="form-control" id="image" accept="image/*">
                              </div>
                          </div>
                          <div class="tab-pane" id="img-url">
                              <label for="url" class="col-sm-3 control-label"> Từ URL</label>
                              <div class="col-sm-9">
                                 <input name="image" type="text" value="" class="form-control" id="url" placeholder="Đường dẫn tới hình ảnh" maxlength="255">
                              </div>
                          </div>
                        </div>
                     </div>
                  </div>
                  <div class="form-group">
                     <div class="col-sm-offset-3 col-sm-9">
                         <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</button>
                        <button type="submit" class="btn btn-danger"><small><i class="fa fa-save"></i></small> Lưu nháp</button>
                        <a class="btn btn-warning" href="#"><small><i class="fa fa-reply"></i></small> Trở về</a>
                     </div>
                  </div>
            </form>
            </div>
         </div>
         <!--END #main-->
      </div>
<script type="text/javascript" src="BackEnd/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="BackEnd/plugins/ckfinder/ckfinder.js"></script>
<script>
    var editor = CKEDITOR.replace( 'content', {
    filebrowserBrowseUrl : 'BackEnd/plugins/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl : 'BackEnd/plugins/ckfinder/ckfinder.html?type=Images',
    filebrowserFlashBrowseUrl : 'BackEnd/plugins/ckfinder/ckfinder.html?type=Flash',
    filebrowserUploadUrl : 'BackEnd/plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl : 'BackEnd/plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl : 'BackEnd/plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
CKFinder.setupCKEditor( editor, '../' );
</script>
<style>
   .btn {margin-bottom: 10px;}
</style>
   </body>
</html>
