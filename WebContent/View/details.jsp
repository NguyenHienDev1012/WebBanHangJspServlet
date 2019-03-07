<%@page import="DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.ProductDAOImpl"%>
<%@page import="BEAN.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="FrontEnd/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="FrontEnd/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="FrontEnd/css/searchhome.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="FrontEnd/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="FrontEnd/js/jquery.min.js"></script>
<script type="text/javascript" src="FrontEnd/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function comment() {
		var xmlhttp;
		var name = document.myform1.name.value;
		var content = document.myform1.content.value;
		var id_Product = document.getElementById("id_Product").value;
		var url = "CommentController?content=" + content + "&name=" + name
				+ "&id_Product=" + id_Product;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			var data = xmlhttp.responseText;
			document.getElementById("mycomment").innerHTML = data;

		}
		xmlhttp.open("POST", url, true);
		xmlhttp.send();
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row detail">
			<div class="col-md-6" style="border-style: groove;">
				<div class="row">
					<div class="col" style="text-align: center; font-size: 20px">
						<p>
							<b><i>Sản Phẩm</i></b>
						</p>
						<img alt="" src="FrontEnd/image/01.jpg" style="width: 280px;height: 320px" >
					</div>
				</div>
			</div>
			<div class="col-md-6" style="border-style: groove;text-align: center;">
				<div class="row" style="text-align: center;">
					<div class="col" style="text-align:center; font-size: 20px">
						<p>
							<b><i>Thông tin kỹ thuật</i></b>
						</p>
					
						<%int id_Product=Integer.parseInt(request.getParameter("id_Product")); 
						ProductDAOImpl productDAOImpl=new ProductDAOImpl();
						Connection conn=DBConnection.createConnection();
						Product product=productDAOImpl.getProductByidProduct(id_Product, conn);
						out.print(product.getInformation_Product());
						
						%>
						
						<p>
							<a
								href="CartController?id_Product=<%=request.getParameter("id_Product")%>"><button
									type="button" class="btn btn-primary">Mua ngay</button></a>
						</p>
					</div>
				</div>
			</div>

			<div class="row comment">
				<div class="col-md-7">
					<div class="row">
					<div class="col-md-5" >
					<br><br>
					<p style="text-align: center;font-size: 20px;color: red;width: 400px" ><b><i>Sản phẩm cùng giá:</i></b></p>
					<img alt="" src="FrontEnd/image/03.jpg" style="border: 15px"  width="180px">
					 </div>
					 <div class="col-md-7">
					 	<br><br><br><br>
					<img alt="" src="FrontEnd/image/02.jpg" width="180px">
					 </div>
					 
					</div>
				</div>
				<div class="col-md-5">
					<div class="row">
						<div class="col">
							<form name="myform1">
							<br><br>
							<p style="color: red;font-size: 20px"><b>Mã sản phẩm:</b></p> <input type="text" id="id_Product"
									value=<%=request.getParameter("id_Product")%> disabled style="border-radius: 10px;width: 40px;text-align: center;"></p>
								<p><b>Bình luận:</b></p>
								 <input type="text" name="name"
									placeholder="Tên của bạn" style="border-radius: 10px;width: 140px;"> <br>
								<br>
								<textarea style="width: 300px; height: 80px; border-radius: 10px;" name="content"
								>
							</textarea>
								<br> <input type="button" value="Post" onclick="comment()" >
							</form>
						</div>

					</div>
					<div class="row">

						<div class="col" id="mycomment">
							<c:forEach items="${listCommentByIdProduct}" var="l">
								<p >
									<b>${l.nameCustomerComment }</b>
								</p>
								<p style="color:gray; font-size:16px">
									<i>${l.contentComment}</i>
								</p>
							</c:forEach>
						</div>
					</div>
					<br> <br>


				</div>


				<jsp:include page="footer.jsp"></jsp:include>
			</div>
</body>
</html>
