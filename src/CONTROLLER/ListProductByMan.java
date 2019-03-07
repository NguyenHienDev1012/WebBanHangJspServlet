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

@WebServlet("/ListProductByMan")
public class ListProductByMan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOImpl productDAOImpl=new ProductDAOImpl();
    public ListProductByMan() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn=DBConnection.createConnection();
		ArrayList<Product> listProductByMan=productDAOImpl.getListByMan(conn);
		request.setAttribute("listProductByMan", listProductByMan);
		RequestDispatcher rq=request.getRequestDispatcher("View/man.jsp");
		rq.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
