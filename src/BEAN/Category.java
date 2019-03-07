package BEAN;

public class Category {
	private int id_Category;
	private String name_Category;
	private String describe_Category;
	
	public Category() {
	}

	public Category(int id_Category, String name_Category,
			String describe_Category) {
		this.id_Category = id_Category;
		this.name_Category = name_Category;
		this.describe_Category = describe_Category;
	}

	public int getId_Category() {
		return id_Category;
	}

	public void setId_Category(int id_Category) {
		this.id_Category = id_Category;
	}

	public String getName_Category() {
		return name_Category;
	}

	public void setName_Category(String name_Category) {
		this.name_Category = name_Category;
	}

	public String getDescribe_Category() {
		return describe_Category;
	}

	public void setDescribe_Category(String describe_Category) {
		this.describe_Category = describe_Category;
	}
	
	

}
