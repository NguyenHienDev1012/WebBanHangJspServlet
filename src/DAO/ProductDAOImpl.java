package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import BEAN.Customer;
import BEAN.Product;
import DB.DBConnection;

public class ProductDAOImpl implements ProductDAO{

	@Override
	public ArrayList<Product> getList(Connection conn) {
		ArrayList<Product> listProduct=new ArrayList<>();
		String sql="select * from product";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while (rs.next()) {
				Product product=new Product();
				int id_Product=rs.getInt("id_product");
				String name_Product=rs.getString("name_product");
				String image_Product=rs.getString("image_product");
				double price_Product=rs.getDouble("price_product");
				int quantity_Product=rs.getInt("quantity_product");
				String manufacture=rs.getString("manufacture");
				String information_Product=rs.getString("information");
				int id_Category=rs.getInt("id_category");
				
				product.setId_Product(id_Product);
				product.setName_Product(name_Product);
				product.setImage_Product(image_Product);
				product.setPrice_Product(price_Product);
				product.setQuantity_Product(quantity_Product);
				product.setManufactory_Product(manufacture);
				product.setInformation_Product(information_Product);
				product.setId_Category(id_Category);
				
				listProduct.add(product);
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		return listProduct;
	}

	@Override
	public ArrayList<Product> getListByMan(Connection conn) {
		ArrayList<Product> listProduct=new ArrayList<>();
		String sql="select * from product where id_category = 1";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while (rs.next()) {
				Product product=new Product();
				int id_Product=rs.getInt("id_product");
				String name_Product=rs.getString("name_product");
				String image_Product=rs.getString("image_product");
				double price_Product=rs.getDouble("price_product");
				int quantity_Product=rs.getInt("quantity_product");
				String manufacture=rs.getString("manufacture");
				String information_Product=rs.getString("information");
				int id_Category=rs.getInt("id_category");
				
				product.setId_Product(id_Product);
				product.setName_Product(name_Product);
				product.setImage_Product(image_Product);
				product.setPrice_Product(price_Product);
				product.setQuantity_Product(quantity_Product);
				product.setManufactory_Product(manufacture);
				product.setInformation_Product(information_Product);
				product.setId_Category(id_Category);
				
				listProduct.add(product);
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		return listProduct;
	}

	@Override
	public ArrayList<Product> getListByGirl(Connection conn) {
		ArrayList<Product> listProduct=new ArrayList<>();
		String sql="select * from product where id_category = 2";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while (rs.next()) {
				Product product=new Product();
				int id_Product=rs.getInt("id_product");
				String name_Product=rs.getString("name_product");
				String image_Product=rs.getString("image_product");
				double price_Product=rs.getDouble("price_product");
				int quantity_Product=rs.getInt("quantity_product");
				String manufacture=rs.getString("manufacture");
				String information_Product=rs.getString("information");
				int id_Category=rs.getInt("id_category");
				
				product.setId_Product(id_Product);
				product.setName_Product(name_Product);
				product.setImage_Product(image_Product);
				product.setPrice_Product(price_Product);
				product.setQuantity_Product(quantity_Product);
				product.setManufactory_Product(manufacture);
				product.setInformation_Product(information_Product);
				product.setId_Category(id_Category);
				
				listProduct.add(product);
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		return listProduct;
	}
	@Override
	public List<Product> getListByCategory(int id_Category) {
		return null;
	}

	@Override
	public Product getProductByidProduct(int id_product,Connection conn) {
		Product product=new Product();
		String sql="select * from product where id_product=' "+id_product+" '";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while (rs.next()) {
				int id_Product=rs.getInt("id_product");
				String name_Product=rs.getString("name_product");
				String image_Product=rs.getString("image_product");
				double price_Product=rs.getDouble("price_product");
				int quantity_Product=rs.getInt("quantity_product");
				String manufacture=rs.getString("manufacture");
				String information_Product=rs.getString("information");
				int id_Category=rs.getInt("id_category");
				
				product.setId_Product(id_Product);
				product.setName_Product(name_Product);
				product.setImage_Product(image_Product);
				product.setPrice_Product(price_Product);
				product.setQuantity_Product(quantity_Product);
				product.setManufactory_Product(manufacture);
				product.setInformation_Product(information_Product);
				product.setId_Category(id_Category);
				
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return product;
	}

	@Override
	public ArrayList<Product> getProductByNameProduct(HttpServletRequest request,Connection conn,String nameProduct) {
		ArrayList<Product> listProductByName=new ArrayList<>();
		String sql="select * from product where name_product like '%"+nameProduct+"%'";
		try {
			PreparedStatement ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			if(!rs.isBeforeFirst()){
				request.setAttribute("result", "Không có sản phẩm nào được tìm thấy");
			}
			else{
			while (rs.next()) {
				Product product=new Product();
				int id_Product=rs.getInt("id_product");
				String name_Product=rs.getString("name_product");
				String image_Product=rs.getString("image_product");
				double price_Product=rs.getDouble("price_product");
				int quantity_Product=rs.getInt("quantity_product");
				String manufacture=rs.getString("manufacture");
				String information_Product=rs.getString("information");
				int id_Category=rs.getInt("id_category");
				
				product.setId_Product(id_Product);
				product.setName_Product(name_Product);
				product.setImage_Product(image_Product);
				product.setPrice_Product(price_Product);
				product.setQuantity_Product(quantity_Product);
				product.setManufactory_Product(manufacture);
				product.setInformation_Product(information_Product);
				product.setId_Category(id_Category);
				
				listProductByName.add(product);
				
			}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProductByName;
	}

	@Override
	public List<Product> arrangedByPrice() {
		return null;
	}
public static void main(String[] args) {
	Connection conn=DBConnection.createConnection();
	//ProductDAOImpl s=new ProductDAOImpl();
	//System.out.println(s.getProductByNameProduct(null, conn, "Anlantic"));
	ProductDAOImpl productDAOImpl=new ProductDAOImpl();
	Product product=productDAOImpl.getProductByidProduct(02, conn);
	System.out.println(product.getInformation_Product());
}


}
