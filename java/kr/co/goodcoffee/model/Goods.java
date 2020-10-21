package kr.co.goodcoffee.model;

import org.springframework.web.multipart.MultipartFile;

public class Goods {

	int gdsid;
	String gdsdivision;
	String gdsname;
	int gdsprice;
	String gdsimage;

	MultipartFile uploadFile;
	int amount = 1;

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getGdsid() {
		return gdsid;
	}

	public void setGdsid(int gdsid) {
		this.gdsid = gdsid;
	}

	public String getGdsdivision() {
		return gdsdivision;
	}

	public void setGdsdivision(String gdsdivision) {
		this.gdsdivision = gdsdivision;
	}

	public String getGdsname() {
		return gdsname;
	}

	public void setGdsname(String gdsname) {
		this.gdsname = gdsname;
	}

	public int getGdsprice() {
		return gdsprice;
	}

	public void setGdsprice(int gdsprice) {
		this.gdsprice = gdsprice;
	}

	public String getGdsimage() {
		return gdsimage;
	}

	public void setGdsimage(String gdsimage) {
		this.gdsimage = gdsimage;
	}

}
