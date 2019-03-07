package BEAN;

public class Comment {
	private int idComment;
	private String nameCustomerComment;
	private String contentComment;
	private int idProduct;

	public Comment() {
	}

	public Comment(int idComment, String nameCustomerComment,
			String contentComment, int idProduct) {
		this.idComment = idComment;
		this.nameCustomerComment = nameCustomerComment;
		this.contentComment = contentComment;
		this.idProduct = idProduct;
	}

	public int getIdComment() {
		return idComment;
	}

	public void setIdComment(int idComment) {
		this.idComment = idComment;
	}

	public String getNameCustomerComment() {
		return nameCustomerComment;
	}

	public void setNameCustomerComment(String nameCustomerComment) {
		this.nameCustomerComment = nameCustomerComment;
	}

	public String getContentComment() {
		return contentComment;
	}

	public void setContentComment(String contentComment) {
		this.contentComment = contentComment;
	}

	public int getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}

	@Override
	public String toString() {
		return "Comment [idComment=" + idComment + ", nameCustomerComment="
				+ nameCustomerComment + ", contentComment=" + contentComment
				+ ", idProduct=" + idProduct + "]";
	}
	

}
