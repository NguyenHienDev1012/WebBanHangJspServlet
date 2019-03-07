<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<script type="text/javascript" src="FrontEnd/js/jquery.min.js"></script>
	<script type="text/javascript" src="FrontEnd/js/bootstrap.min.js"></script>
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
						<div class="col" style="color: blue"><b>Thương hiệu </b></div>
					</div>
					<div class="row">
						<div class="col" style="OVERFLOW-Y:scroll; WIDTH:50px; HEIGHT:100px">
							
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
							  <input type="checkbox" name="vehicle" value="Car" checked="checked"> I have a car<br>
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
							  <input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
						
  						 </div>
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
				<br>
			<div class="row">
				<div class="col" style="color: red; font-size: 20px">
					<p><b> Thông tin đơn hàng</b></p>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<table border="2px" >
						<tr>
							<th width="150px" height="40px" style="text-align: center;">Hình ảnh</th>
							<th width="280px" style="text-align: center;">Tên sản phẩm</th>
							<th width="160px" style="text-align: center;">Số lượng</th>
							<th width="200px" style="text-align: center;">Tổng tiền sản phẩm</th>
						</tr>
					</table>
				</div>
			</div>
			<br><br>
			<div class="row">
				<div class="col" style="color: red; font-size: 20px">
					<p><b> Thông tin khách hàng</b></p>
				</div>
			</div>

		<div class="row">
			<div class="col-md-4">
				<div class="row">
					<div class="col">
						<form>
					<input type="text" name="nameCustomer" placeholder="Nhập tên của bạn" style="border-radius:6px;width: 250px"><br><br>
					<input type="text" name="phoneCustomer" placeholder="Nhập số điện thoại" style="border-radius: 6px;width: 250px"><br><br>
					<input type="text" name="addressCustomer" placeholder="Địa chỉ " style="border-radius:6px;width: 250px"><br><br>
					<input type="text" name="emailCustomer" placeholder="Nhập email" style="border-radius:6px;width: 250px"><br><br>
					<input type="text" name="noteCustomer" placeholder="Ghi chú thêm" style="border-radius:6px;width: 250px"><br><br>
					<input type="submit" class="btn btn-primary" value= "Xác nhận đơn hàng">
				</form>
					</div>
				</div>
				
			</div>
			<div class="col-md-8">
					<div class="row">
						<div class="col">
							<h3 style="color: blue"><b>Cảm ơn quý khách đã mua hàng của chúng tôi !</b></h3>
						</div>
					</div>
				</div>
		</div>

	</div>
			<br><br>
     <jsp:include page="footer.jsp"></jsp:include>

	</div>
</body>
</html>
