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
import javax.servlet.http.HttpSession;

import BEAN.Product;
import DAO.ProductDAOImpl;
import DB.DBConnection;

@WebServlet("/LogoutController")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOImpl productImpl=new ProductDAOImpl();

	public LogoutController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.createConnection();
		HttpSession session = request.getSession(false);
		session.removeAttribute("customer");
		session.removeAttribute("sessionAdmin");
		ArrayList<Product> listProduct = productImpl.getList(conn);
		request.setAttribute("listProduct", listProduct);
		RequestDispatcher rq = request.getRequestDispatcher("View/home.jsp");
		rq.forward(request, response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

}
