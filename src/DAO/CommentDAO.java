package DAO;

import java.sql.Connection;
import java.util.List;

import BEAN.Comment;

public interface CommentDAO {
	public void insertComment(Comment cmt,Connection conn);
	public List<Comment> displayComment(Connection conn);
	public List<Comment> displayCommentByIdProduct(Connection conn,int id_Product);

}
