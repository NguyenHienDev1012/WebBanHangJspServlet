package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Cart;
import BEAN.Item;
import BEAN.Product;
import DAO.CartDAOImpl;
import DAO.ProductDAOImpl;
import DB.DBConnection;

@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOImpl productDAOImpl = new ProductDAOImpl();
	CartDAOImpl cartDAOImpl=new CartDAOImpl();

	public CartController() {
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.createConnection();
		String id_product = request.getParameter("id_Product");
		Product product = productDAOImpl.getProductByidProduct(
				Integer.parseInt(id_product), conn);
		

		HttpSession session = request.getSession(true);
		int quantity=0;

		if (session.getAttribute("cartSession") ==null) {
			Item item = new Item(product, 1);
			Cart cartSession = new Cart();
		    cartDAOImpl.insertToCart(Integer.parseInt(id_product), item,
					cartSession);
			session.setAttribute("cartSession", cartSession);
			session.setAttribute("cart",cartSession);
			session.setAttribute("item",item);

		} else {
		
			Cart sessionGetCart = (Cart) session.getAttribute("cartSession");
			Cart cartGetSession = new Cart(sessionGetCart.getCartItems());
			if(cartGetSession.getCartItems().containsKey(id_product)){
				quantity=cartGetSession.getCartItems().get(id_product).getQuantity();
			}
			Item item = new Item(product, quantity);
			cartDAOImpl.insertToCart(Integer.parseInt(id_product), item, cartGetSession);
			session.setAttribute("cart",cartGetSession);
			
		}
		
		RequestDispatcher rq = request.getRequestDispatcher("View/cart.jsp");
		rq.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
