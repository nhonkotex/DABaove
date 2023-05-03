package code.model;

public class addProductR {
	private int idR;
	private String nameR;
	private String categoryR;
	private String priceR;
	private String saleR;
	private String imageR;
	private String chitietR;
	
	public addProductR() {
	}

	
	public addProductR(int id, String name, String category, String price,String saleR , String image, String chitiet) {
		super();
		this.idR = id;
		this.nameR = name;
		this.categoryR = category;
		this.priceR = price;
		this.saleR = saleR;
		this.imageR= image;
		this.chitietR = chitiet;
	}


	public int getIdR() {
		return idR;
	}


	public void setIdR(int idR) {
		this.idR = idR;
	}


	public String getNameR() {
		return nameR;
	}


	public void setNameR(String nameR) {
		this.nameR = nameR;
	}


	public String getCategoryR() {
		return categoryR;
	}


	public void setCategoryR(String categoryR) {
		this.categoryR = categoryR;
	}


	public String getPriceR() {
		return priceR;
	}


	public void setPriceR(String priceR) {
		this.priceR = priceR;
	}


	public String getSaleR() {
		return saleR;
	}


	public void setSaleR(String saleR) {
		this.saleR = saleR;
	}


	public String getImageR() {
		return imageR;
	}


	public void setImageR(String imageR) {
		this.imageR = imageR;
	}


	public String getChitietR() {
		return chitietR;
	}


	public void setChitietR(String chitietR) {
		this.chitietR = chitietR;
	}


	@Override
	public String toString() {
		return "ProductR [idR=" + idR + ", nameR=" + nameR + ", categoryR=" + categoryR + ", priceR=" + priceR
				+ ", saleR=" + saleR + ", imageR=" + imageR + ", chitietR=" + chitietR + "]";
	}
	

}
