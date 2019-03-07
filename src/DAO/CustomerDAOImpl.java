package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import BEAN.Customer;

public class CustomerDAOImpl implements CustomerDAO {

	@Override
	public boolean loginCustomer(Connection conn, Customer customer) {
		PreparedStatement ptmt = null;
		String sql = "select * from customer";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				String username = rs.getString("name_customer");
				String password = rs.getString("password");
				if (username.equals(customer.getName_Customer())
						&& password.equals(customer.getPassWord_Customer())) {
					return true;
				}

			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	@Override
	public int authorizationCustomer(Connection conn, Customer customer) {
		
		int role=0;
		PreparedStatement ptmt = null;
		String sql =  "select role from customer where name_customer='" + customer.getName_Customer() +"' and password='"+customer.getPassWord_Customer()+"'";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				 role=rs.getInt("role");
				
			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return role;

	}
	@Override
	public boolean registerCustomer(Connection conn, Customer customer) {
		PreparedStatement ptmt = null;
		String sql = "insert into customer (name_customer,password,phone,email,role) values (?,?,?,?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
			String nameCustomer = customer.getName_Customer();
			String password = customer.getPassWord_Customer();
			String email = customer.getEmail_Customer();
			String phone = customer.getPhone_Customer();
			int role = 1;
			ptmt.setString(1, nameCustomer);
			ptmt.setString(2, password);
			ptmt.setString(3, phone);
			ptmt.setString(4, email);
			ptmt.setInt(5, role);
			int kt = ptmt.executeUpdate();
			if (kt != 0) {
				return true;
			}
			ptmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	@Override
	public ArrayList<Customer> checkCustomerForgotPassByEmail(Connection conn,
			Customer member) {
		PreparedStatement ptmt=null;
		String sql =" select * from customer";
		ArrayList<Customer> list=new ArrayList<>();
		try {
			ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()) {
				Customer customerMail=new Customer();
				String email_Customer=rs.getString("email");
				String name_Customer=rs.getString("name_customer");
				String passWord_Customer=rs.getString("password");
				
				customerMail.setName_Customer(name_Customer);
				customerMail.setPassWord_Customer(passWord_Customer);
				customerMail.setEmail_Customer(email_Customer);
				list.add(customerMail);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static boolean sendMail(String to, String subject, String text) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("thanhhienpupils@gmail.com", "HHHHHHHHH");
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress("thanhhienpupils@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}
	@Override
	public boolean checkCustomer(Connection conn, Customer customer) {

		return false;
	}

	@Override
	public boolean updateCustomer(Connection conn, Customer customer) {

		return false;
	}


}
