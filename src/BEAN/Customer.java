package BEAN;

public class Customer {
	private int id_Customer;
	private String name_Customer;
	private String passWord_Customer;
	private String phone_Customer;
	private String email_Customer;
	private int role;
	public Customer(){};
	
	public Customer(int id_Customer, String name_Customer,
			String passWord_Customer, String phone_Customer,
			String email_Customer, int role) {
		this.id_Customer = id_Customer;
		this.name_Customer = name_Customer;
		this.passWord_Customer = passWord_Customer;
		this.phone_Customer = phone_Customer;
		this.email_Customer = email_Customer;
		this.role = role;
	}
	public int getId_Customer() {
		return id_Customer;
	}
	public void setId_Customer(int id_Customer) {
		this.id_Customer = id_Customer;
	}
	public String getName_Customer() {
		return name_Customer;
	}
	public void setName_Customer(String name_Customer) {
		this.name_Customer = name_Customer;
	}
	public String getPassWord_Customer() {
		return passWord_Customer;
	}
	public void setPassWord_Customer(String passWord_Customer) {
		this.passWord_Customer = passWord_Customer;
	}
	public String getPhone_Customer() {
		return phone_Customer;
	}
	public void setPhone_Customer(String phone_Customer) {
		this.phone_Customer = phone_Customer;
	}
	public String getEmail_Customer() {
		return email_Customer;
	}
	public void setEmail_Customer(String email_Customer) {
		this.email_Customer = email_Customer;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	

}
