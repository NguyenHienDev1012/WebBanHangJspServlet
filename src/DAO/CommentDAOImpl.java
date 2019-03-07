package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Comment;
import DB.DBConnection;

public class CommentDAOImpl implements CommentDAO{

	@Override
	public void insertComment(Comment cmt, Connection conn) {
		PreparedStatement ptmt=null;
		String sql="insert into comment (name_comment,content,id_product) values (?,?,?)";
		try {
			ptmt=conn.prepareStatement(sql);
			String name_comment=cmt.getNameCustomerComment();
			String content=cmt.getContentComment();
			int id_product=cmt.getIdProduct();
			ptmt.setNString(1, name_comment);
			ptmt.setNString(2, content);
			ptmt.setInt(3, id_product);
			ptmt.executeUpdate();
			ptmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public List<Comment> displayComment(Connection conn) {
		
		ArrayList<Comment> list=new ArrayList<>();
		String sql="select * from comment";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while (rs.next()) {
					Comment cmt=new Comment();
					String name_comment=rs.getString("name_comment");
					String content=rs.getString("content");
					cmt.setNameCustomerComment(name_comment);
					cmt.setContentComment(content);
					list.add(cmt);
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Comment> displayCommentByIdProduct(Connection conn,int id_Product) {
		ArrayList<Comment> list=new ArrayList<>();
		String sql="select * from comment where id_Product="+id_Product;
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while (rs.next()) {
					Comment cmt=new Comment();
					String name_comment=rs.getString("name_comment");
					String content=rs.getString("content");
					cmt.setNameCustomerComment(name_comment);
					cmt.setContentComment(content);
					list.add(cmt);
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static void main(String[] args) {
		CommentDAOImpl b=new CommentDAOImpl();
		Connection conn=DBConnection.createConnection();
		b.insertComment(new Comment(0," nn"," nn", 3), conn);
		ArrayList<Comment> l=(ArrayList<Comment>) b.displayCommentByIdProduct(conn, 01);
		for (int i = 0; i < l.size(); i++) {
			System.out.println(l.get(i));
			
		}
	}
	}

