package kr.co.goodcoffee.model;

public class Detail {

	int detailid;
	int orderid;
	int gdsid;
	int amount;

	String gdsname;
	int gdsprice;

	public int getGdsprice() {
		return gdsprice;
	}

	public void setGdsprice(int gdsprice) {
		this.gdsprice = gdsprice;
	}

	public String getGdsname() {
		return gdsname;
	}

	public void setGdsname(String gdsname) {
		this.gdsname = gdsname;
	}

	public int getDetailid() {
		return detailid;
	}

	public void setDetailid(int detailid) {
		this.detailid = detailid;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getGdsid() {
		return gdsid;
	}

	public void setGdsid(int gdsid) {
		this.gdsid = gdsid;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
