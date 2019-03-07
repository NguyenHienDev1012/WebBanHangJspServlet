package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Cart;
import DAO.CartDAOImpl;


@WebServlet("/DeleteCartController")
public class DeleteCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     CartDAOImpl cartDAOImpl =new CartDAOImpl(); 
    public DeleteCartController() {
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String idProduct=request.getParameter("id_Product");
		HttpSession session=request.getSession(true);
		Cart cart=(Cart)session.getAttribute("cart");
		cartDAOImpl.removeToCart(Integer.parseInt(idProduct), cart);
		session.setAttribute("cart", cart);
		RequestDispatcher rq=request.getRequestDispatcher("View/cart.jsp");
		rq.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
