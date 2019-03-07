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

@WebServlet("/ListProductByGirl")
public class ListProductByGirl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOImpl productDAOImpl=new ProductDAOImpl();
    public ListProductByGirl() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Connection conn=DBConnection.createConnection();
		ArrayList<Product> listProductByMan=productDAOImpl.getListByGirl(conn);
		request.setAttribute("listProductByGirl", listProductByMan);
		RequestDispatcher rq=request.getRequestDispatcher("View/girl.jsp");
		rq.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
