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

import BEAN.Customer;
import BEAN.Product;
import DAO.CustomerDAO;
import DAO.CustomerDAOImpl;
import DAO.ProductDAOImpl;
import DB.DBConnection;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOImpl productImpl = new ProductDAOImpl();

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rq = request.getRequestDispatcher("View/login.jsp");
		rq.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.createConnection();
		Customer customer = new Customer();
		String name_Customer = request.getParameter("your_name");
		String passWord_Customer = request.getParameter("your_pass");
		customer.setName_Customer(name_Customer);
		customer.setPassWord_Customer(passWord_Customer);

		CustomerDAOImpl customerDAOImpl = new CustomerDAOImpl();
		boolean kt = customerDAOImpl.loginCustomer(conn, customer);
		if (kt) {

			int authorization = customerDAOImpl.authorizationCustomer(conn,customer);
			if (authorization == 2) {
				HttpSession session = request.getSession(true);
				session.setAttribute("sessionAdmin", name_Customer);
				RequestDispatcher rd = request.getRequestDispatcher("View/Admin/AdminHome.jsp");
				rd.forward(request, response);

			}

			if (authorization == 1) {
				HttpSession session = request.getSession(true);
				session.setAttribute("customer", name_Customer);
				ArrayList<Product> listProduct = productImpl.getList(conn);
				request.setAttribute("listProduct", listProduct);
				RequestDispatcher rq = request.getRequestDispatcher("View/home.jsp");
				rq.forward(request, response);
			}

		} else {
			request.setAttribute("msg", "Đăng nhập sai,mời bạn đăng nhập lại!");
			RequestDispatcher rq = request.getRequestDispatcher("View/login.jsp");
			rq.forward(request, response);
		}

	}

}
