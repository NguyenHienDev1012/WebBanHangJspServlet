package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Customer;
import DAO.CustomerDAO;
import DAO.CustomerDAOImpl;
import DB.DBConnection;



@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegisterController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		RequestDispatcher rq=request.getRequestDispatcher("View/register.jsp");
		rq.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Connection conn=DBConnection.createConnection();
		Customer customer=new Customer();
		String name_Customer=request.getParameter("name");
		String email_Customer=request.getParameter("email");
		String phone_Customer=request.getParameter("phone");
		String passWord_Customer=request.getParameter("pass");
		
		customer.setName_Customer(name_Customer);
		customer.setPassWord_Customer(passWord_Customer);
		customer.setEmail_Customer(email_Customer);
		customer.setPhone_Customer(phone_Customer);
		CustomerDAO customerDAO=new CustomerDAOImpl();
		boolean kt=customerDAO.registerCustomer(conn, customer);
		
		if(kt){
			request.setAttribute("msg", "Đăng ký thành công!");
			RequestDispatcher rq=request.getRequestDispatcher("View/register.jsp");
			rq.forward(request, response);
			
		}
		else{
			request.setAttribute("msg", "Đăng ký thất bại!");
			RequestDispatcher rq=request.getRequestDispatcher("View/register.jsp");
			rq.forward(request, response);
			
			
		}
	}

}
