package BEAN;

public class Product {
	private int id_Product;
	private String name_Product;
	private String image_Product;
	private double price_Product;
	private int quantity_Product;
	private String manufactory_Product;
	private String information_Product;
	private int id_Category;
	
	
	public Product() {
	}
	public Product(int id_Product, String name_Product,
			String image_Product, double price_Product, int quantity_Product,
			String manufactory_Product, String information_Product,
			int id_Category) {
		this.id_Product = id_Product;
		this.name_Product = name_Product;
		this.image_Product = image_Product;
		this.price_Product = price_Product;
		this.quantity_Product = quantity_Product;
		this.manufactory_Product = manufactory_Product;
		this.information_Product = information_Product;
		this.id_Category = id_Category;
	}
	public int getId_Product() {
		return id_Product;
	}
	public void setId_Product(int id_Product) {
		this.id_Product = id_Product;
	}
	public String getName_Product() {
		return name_Product;
	}
	public void setName_Product(String name_Product) {
		this.name_Product = name_Product;
	}
	public String getImage_Product() {
		return image_Product;
	}
	public void setImage_Product(String image_Product) {
		this.image_Product = image_Product;
	}
	public double getPrice_Product() {
		return price_Product;
	}
	public void setPrice_Product(double price_Product) {
		this.price_Product = price_Product;
	}
	public int getQuantity_Product() {
		return quantity_Product;
	}
	public void setQuantity_Product(int quantity_Product) {
		this.quantity_Product = quantity_Product;
	}
	public String getManufactory_Product() {
		return manufactory_Product;
	}
	public void setManufactory_Product(String manufactory_Product) {
		this.manufactory_Product = manufactory_Product;
	}
	public String getInformation_Product() {
		return information_Product;
	}
	public void setInformation_Product(String information_Product) {
		this.information_Product = information_Product;
	}
	public int getId_Category() {
		return id_Category;
	}
	public void setId_Category(int id_Category) {
		this.id_Category = id_Category;
	}
	@Override
	public String toString() {
		return "Product [id_Product=" + id_Product + ", name_Product="
				+ name_Product + ", image_Product=" + image_Product
				+ ", price_Product=" + price_Product + ", quantity_Product="
				+ quantity_Product + ", manufactory_Product="
				+ manufactory_Product + ", information_Product="
				+ information_Product + ", id_Category=" + id_Category + "]";
	}
	

}
