package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Comment;
import DAO.CommentDAO;
import DAO.CommentDAOImpl;
import DB.DBConnection;

@WebServlet("/CommentController")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommentDAOImpl cmtDAOImpl = new CommentDAOImpl();

	public CommentController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.createConnection();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String name = request.getParameter("name");
		String content = request.getParameter("content");
		Comment cmt = new Comment(0, name, content, Integer.parseInt(request.getParameter("id_Product")));
		cmtDAOImpl.insertComment(cmt, conn);
		ArrayList<Comment> listCommentByIdProduct = (ArrayList<Comment>) cmtDAOImpl
				.displayCommentByIdProduct(conn,
						Integer.parseInt(request.getParameter("id_Product")));
		request.setAttribute("listCommentByIdProduct", listCommentByIdProduct);
		RequestDispatcher rq = request
				.getRequestDispatcher("View/displaycomment.jsp");
		rq.forward(request, response);
	}

}
