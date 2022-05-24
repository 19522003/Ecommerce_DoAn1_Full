package com.entity;

public class Products {
	private int productID;
	private String productName;
	private String gender;
	private String price;
	private String productCategory;
	private String status;
	private String photoName;
	private String email;
	@Override
	public String toString() {
		return "Products [productID=" + productID + ", productName=" + productName + ", gender=" + gender + ", price="
				+ price + ", productCategory=" + productCategory + ", status=" + status + ", photoName=" + photoName
				+ ", email=" + email + "]";
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Products(String productName, String gender, String price, String productCategory, String status,
			String photoName, String email) {
		super();
		this.productName = productName;
		this.gender = gender;
		this.price = price;
		this.productCategory = productCategory;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}
}
