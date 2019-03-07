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

import BEAN.Comment;
import DAO.CommentDAOImpl;
import DB.DBConnection;

@WebServlet("/DetailsController")
public class DetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommentDAOImpl cmtDAOImpl = new CommentDAOImpl();

	public DetailsController() {
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.createConnection();
		ArrayList<Comment> listCommentByIdProduct = (ArrayList<Comment>) cmtDAOImpl
				.displayCommentByIdProduct(conn,
						Integer.parseInt(request.getParameter("id_Product")));
		request.setAttribute("listCommentByIdProduct", listCommentByIdProduct);
		RequestDispatcher rq = request.getRequestDispatcher("View/details.jsp");
		rq.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

}
