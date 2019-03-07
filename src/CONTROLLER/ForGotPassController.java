package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Customer;
import DAO.CustomerDAOImpl;
import DB.DBConnection;

import com.mysql.jdbc.Connection;
@WebServlet("/ForGotPassController")
public class ForGotPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDAOImpl customerDAOImpl=new CustomerDAOImpl();
    public ForGotPassController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("View/forgotpass.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.createConnection();
		String email_Customer = request.getParameter("email");
		Customer customer = new Customer();
		customer.setEmail_Customer(email_Customer);
		ArrayList<Customer> list = customerDAOImpl.checkCustomerForgotPassByEmail(conn, customer);
		String username = "";
		String password = "";
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getEmail_Customer().equals(email_Customer)) {
				username = list.get(i).getName_Customer();
				password = list.get(i).getPassWord_Customer();
			}
		}
		if(username.equals("")&password.equals("")) {
			request.setAttribute("messageMail", "Mail không tồn tại,mời nhập lại!");
			RequestDispatcher rq = request.getRequestDispatcher("View/forgotpass.jsp");
			rq.forward(request, response);
		}
		else {
			customerDAOImpl.sendMail(email_Customer, "Username&Password:", username+"&"+password);
			request.setAttribute("messageMail", "Mời bạn kiểm tra mail !");
			RequestDispatcher rq = request.getRequestDispatcher("View/forgotpass.jsp");
			rq.forward(request, response);
		}

	}
	}

