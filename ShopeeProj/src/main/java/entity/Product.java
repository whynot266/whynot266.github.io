package entity;

public class Product {
	private int id;
	private String productName;
	private double productPrice;
	private String productImg;
	private String productOrderImg;
	private int discount;
	
	
	
	public Product() {
		
	}
	public Product(int id, String productName, double productPrice, String productImg, String productOrderImg,
			int discount) {
		
		this.id = id;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImg = productImg;
		this.productOrderImg = productOrderImg;
		this.discount = discount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductOrderImg() {
		return productOrderImg;
	}
	public void setProductOrderImg(String productOrderImg) {
		this.productOrderImg = productOrderImg;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
}
