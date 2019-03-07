<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Trang chủ</title>
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
  <style>

#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 15px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}
</style>
</head>

<body>
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<script>

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>

	<div class="container-fluid">
	<jsp:include page="header.jsp"></jsp:include>
 

<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="FrontEnd/image/banner1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="FrontEnd/image/banner2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="FrontEnd/image/banner3.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


	<div class=" row content" id="product">
		<div class="col-md-3 content-left" style="border-spacing: 5px;">
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


		<div class="col-md-9 content-right" id="content-product">

				<br>
				<div class="row">
				<c:if test="${result!=null}" >
					<p style="color: red;font-size: 18px">	${result }</p>
				</c:if>
				<c:if test="${result==null }">
					<c:forEach items="${listProductByName}" var="l">
						<div class="col-md-3">
						<div class="row" >
							<div class="col" ><a href="DetailsController?id_Product=${l.id_Product}"><img src="FrontEnd/image/${l.image_Product}" style="width: 200px" height="230px"></a></div>
						</div>
						<div class="row">
							<div class="col"style="text-align: center;"><a href="DetailsController?id_Product=${l.id_Product}">${l.name_Product }</a><p>${l.price_Product}</p>
								<p><a href="CartController?id_Product=${l.id_Product}"><button type="button" class="btn btn-primary">Chọn mua</button></a></p>

							</div>
						</div>
					</div>
					</c:forEach>
					</c:if>

	</div>
<div class="row">
	 <ul class="pagination" >
    <li class="page-item"><a class="page-link" href="#">Trước</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Tiếp theo</a></li>
  </ul>
</div>

</div>

	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
	
			


</body>
</html>
