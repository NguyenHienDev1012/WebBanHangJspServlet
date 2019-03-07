package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Product;
import DAO.ProductDAOImpl;
import DB.DBConnection;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOImpl productDAOImpl = new ProductDAOImpl();

	public SearchController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.createConnection();
		String name_Product = request.getParameter("name_Product");
		ArrayList<Product> listProductByName = productDAOImpl
				.getProductByNameProduct(request,conn, name_Product);
		request.setAttribute("listProductByName", listProductByName);
		
		RequestDispatcher rq = request
				.getRequestDispatcher("View/displaysearch.jsp");
		rq.forward(request, response);
	}

}
