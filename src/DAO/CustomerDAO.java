package DAO;

import java.sql.Connection;
import java.util.ArrayList;

import BEAN.Customer;

public interface CustomerDAO {
	public boolean loginCustomer (Connection conn,Customer customer);
	public int authorizationCustomer(Connection conn,Customer customer );
	public boolean registerCustomer(Connection conn,Customer customer);
	public boolean checkCustomer(Connection conn,Customer customer);
	public boolean updateCustomer(Connection conn,Customer customer);
	public  ArrayList<Customer> checkCustomerForgotPassByEmail( Connection conn,Customer member);
	
}
