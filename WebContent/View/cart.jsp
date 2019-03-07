<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="BEAN.Cart"%>
<%@page import="DAO.CartDAOImpl"%>
<%@page import="java.util.Map"%>
    <%@page import="BEAN.Item"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="FrontEnd/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="FrontEnd/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="FrontEnd/css/searchhome.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="FrontEnd/css/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>



	

	<div class=" row content">
		<div class="col-md-3 content-left" style="border-spacing: 5px">
				<p><b><span class="glyphicon glyphicon-filter" style="color:blue"></span>&nbspBỘ LỌC SẢN PHẨM</b><p>
	
						<div class="row">
						<div class="col" style="color: blue"><b>Thương hiệu</b></div>
					</div>
					
					<div class="row">
						 <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu
					</div>
					<div class="row">
						  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu	
					</div>
					<div class="row">
						  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu	
					</div>
					<div class="row">
						  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu	
					</div>
					
				
				<br>
				
					<div class="row">
						<div class="col" style="color: blue"><b>Khoảng giá</b></div>

					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu	
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Giá dưới 5 triệu
					</div>
				<br>
				
					<div class="row">
						<div class="col" style="color: blue"><b>Năng lượng</b></div>
					</div>
				<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Đồng hồ cơ
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> Đồng hồ điện tử
					</div>
				<br>
					<div class="row">
						<div class="col" style="color: blue"><b>Loại dây</b></div>
					</div>
				<br>
				<div class="row">
		
							  <input type="checkbox" name="vehicle" value="Car" checked="checked"> I have a car<br>
					
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
					</div>
				<br>
			
					<div class="row">
						<div class="col" style="color: blue"><b>Loại vỏ</b></div>
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
					</div>
					<div class="row">
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
					</div>
				
			<br>
		</div>


		<div class="col-md-9 content-right">
				<%CartDAOImpl cartDAOImpl=new CartDAOImpl();%>
           		 <%Cart cart= (Cart)session.getAttribute("cart");%>
			<div class="row">
				<div class="col"><p><a href="HomeForward">Home </a> &nbsp/&nbsp Giỏ hàng</p></div>
			</div>
			<br><br><br>
			<div class="row">
			<%if(cart==null) {%>
				<div class="col-md-9">
					<div class="row">
						<div class="col">
					<p><b style="color: red">GIỎ HÀNG [2 item(s)] </b>
						</div>
					</div>
				</div>
				<%}else{ %>
				<div class="col-md-9">
					<div class="row">
						<div class="col">
					<p><b style="color: red">GIỎ HÀNG [<%=cartDAOImpl.countItem(cart)%> item(s)] </b>
						</div>
					</div>
				</div>
				<%} %>
				
				
				<div class="col-md-3">
					<div class="row">
						<div class="col">
							<a href="HomeForward#product" style="text-align: right;"  class="btn btn-danger "><==Tiếp tục mua hàng</a>
						</div>
						
					</div>

				</div>
				
			</div>
			<br><br>

		<div class=" row numberProduct">
			<div class="col">
				<table border="1px">
				<tr>
					<th width="130px"  height="30px" style="text-align: center;">Sản phẩm</th>
					<th width="330px"  style="text-align: center;">Tên sản phẩm</th>
					<th width="130px"  style="text-align: center;">Số lượng / Xóa</th>
					<th width="130px"  style="text-align: center;">Giá</th>
					<th width="130px"  style="text-align: center;">Tổng tiền</th>
				</tr>
				<%for(Map.Entry<Integer,Item> list :cart.getCartItems().entrySet()){%>
				<tr>
				
					<td  style="text-align: center;"><img src="FrontEnd/image/<%=list.getValue().getProduct().getImage_Product() %>" style="height:160px;width: 100px"></td>
					<td  style="text-align: center;"><%=list.getValue().getProduct().getName_Product() %></td>
					<td  style="text-align: center;">
						
						 <input type="number" name="quantity" min="1" max="5" value="<%=list.getValue().getQuantity()%>"> /
						 <a href="DeleteCartController?id_Product=<%=list.getValue().getProduct().getId_Product()%>" class="btn btn-warning">Xóa</a>
					
					</td>
					<td  style="text-align: center;"><%=list.getValue().getProduct().getPrice_Product() %></td>
					<td  style="text-align: center;"></td>
				</tr>
				<%} %>
				</table>
			</div>
						
		</div>		
		<br>
			<div class="row">

				<div class="col-md-6">
					<br>
					<div class="row">
						<div class="col">
							<a href="#" style="text-align: right;" type="button" class="btn btn-success">Cập nhật giỏ hàng </a>
						</div>
						
					</div>
					<br>
					<div class="row">
						<div class="col">

							<a href="HomeForward#product" style="text-align: right;" type="button" class="btn btn-danger"><==Tiếp tục mua hàng </a>
						</div>
						
					</div>
				</div>

				<div class="col-md-6">
					<br>
					<div class="row">
						<div class="col">
							<a href="DeleteAllProductCartController" style="text-align: right;" type="button" class="btn btn-success">Xóa giỏ hàng </a>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col">
							<a href="BillController" style="text-align: right;" type="button" class="btn btn-danger ">Tiếp theo ==><i class="icon-arrow-right"></a>
						</div>
					</div>
				</div>
			</div>

				

</div>
<div></div>
		
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
