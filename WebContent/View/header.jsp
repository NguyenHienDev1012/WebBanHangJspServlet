<%@page import="BEAN.Cart"%>
<%@page import="DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
</head>
<body>
<%if(session.getAttribute("customer")==null) {%>
		<div class="row header">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-6"> <p><i class="fa fa-envelope" style="font-size:24px;color:blue"></i><b> Email:</b> nguyenthanhhienitnlu@gmail.com</p>
				</div>
				<div class="col-md-4"> <p><i class="fa fa-phone" style="font-size:24px;color:red"></i><b> Phone: </b> 0343288735</p></div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-6">
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<p><a href="#">
          			<span class="glyphicon glyphicon-user"></span>
       				 </a><b><a href="LoginController"><span class="glyphicon glyphicon-log-in"></span>  <button type="button" class="btn btn-warning">Đăng nhập</button></a> hoặc <a href="RegisterController"><button type="button" class="btn btn-success">Đăng ký</button></a></b></p>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	    </div>
	    	<%} else{ %>
	    	<div class="row header">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-6"> <p><i class="fa fa-envelope" style="font-size:24px;color:blue"></i><b> Email:</b> nguyenthanhhienitnlu@gmail.com</p>
				</div>
				<div class="col-md-4"> <p><i class="fa fa-phone" style="font-size:24px;color:red"></i><b> Phone: </b> 0343288735</p></div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-6">
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<p><a href="#">
          			<span class="glyphicon glyphicon-user"></span><b>Xin chào:<%=session.getAttribute("customer")%></b>
       				 </a><b><a href="LogoutController"> <button type="button" class="btn btn-warning">Đăng xuất</button></a></b></p>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	    </div>
	    	<%} %>
	    	<div class="row topnav">
		<div class="col-md-3 logo"><a href="HomeForward"><img src="FrontEnd/image/logo.png"></a></div>
		<div class="col-md-6 topnav" >
			<div class="row">
				<div class="col-md-2"> 
					
			    
				</div>
				<div class="col-md-10 searchform">
				 	<form name="myform2" method="post" action="SearchController">
			      	<input type="text" name="name_Product" placeholder="Nhập tên sản phẩm cần tìm" style="width: 400px;height:35px;border-radius: 5px;">
			     	 <input type="submit"  value="OK">
			    	</form>
				</div>
			</div>
			<%CartDAOImpl cartDAOImpl=new CartDAOImpl();%>
            <%Cart cart= (Cart)session.getAttribute("cart");%>
		</div>
		<%if(cart==null){ %>
		<div class="col-md-3 cart">
			<div class="row">
				<div class="col" style="color:blue">
		     	<a href="#"><span class="glyphicon glyphicon-shopping-cart"> <i>Giỏ&nbsphàng(0)</i></span></a> 
				</div>
			</div>

	</div>
	<%}else{ %>
	<div class="col-md-3 cart">
			<div class="row">
				<div class="col" style="color:blue">
		     	<a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a> <i>Giỏ hàng (<%=cartDAOImpl.countItem(cart) %>)&nbsp</i>
				</div>
			</div>

	</div>
	<%} %>

	<div class="row menu">
		<div class="col">
			<ul>
				<li><a href="#" style="color: black"><b>Thương hiệu</b></a></li>
				<li><a href="ListProductByMan" style="color: black"><b>Đồng hồ nam</b></a></li>
				<li><a href="ListProductByGirl" style="color: black"><b>Đồng hồ nữ</b></a></li>
				<li><a href="#" style="color: black"><b>Đồng hồ đôi</b></a></li>
				<li><a href="#" style="color: black"><b>Đồng hồ trẻ em</b></a></li>
				<li><a href="#" style="color: black"><b>Phụ kiện đồng hồ</b></a></li>

			</ul>

		</div>

	</div>
	  
</body>
</html>