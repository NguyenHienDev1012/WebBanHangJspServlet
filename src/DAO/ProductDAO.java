package DAO;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import BEAN.Customer;
import BEAN.Product;

public interface ProductDAO {
	
	public ArrayList<Product> getList(Connection conn);
	public ArrayList<Product> getListByMan(Connection conn);
	public ArrayList<Product> getListByGirl(Connection conn);
	public List<Product> getListByCategory(int id_Category);
	public Product getProductByidProduct(int id_Product,Connection conn);
	public ArrayList<Product> getProductByNameProduct(HttpServletRequest request,Connection conn,String name_Product);
	public List<Product> arrangedByPrice();
	

}
