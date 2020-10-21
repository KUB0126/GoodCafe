package kr.co.goodcoffee.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Review {

	int rvwno;
	String rvwcontent;
	String rvwimg;
	String memid;
	Date rvwdate;
	int rvwcnt;

	MultipartFile uploadFile;
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getRvwno() {
		return rvwno;
	}

	public void setRvwno(int rvwno) {
		this.rvwno = rvwno;
	}

	public String getRvwcontent() {
		return rvwcontent;
	}

	public void setRvwcontent(String rvwcontent) {
		this.rvwcontent = rvwcontent;
	}

	public String getRvwimg() {
		return rvwimg;
	}

	public void setRvwimg(String rvwimg) {
		this.rvwimg = rvwimg;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public Date getRvwdate() {
		return rvwdate;
	}

	public void setRvwdate(Date rvwdate) {
		this.rvwdate = rvwdate;
	}

	public int getRvwcnt() {
		return rvwcnt;
	}

	public void setRvwcnt(int rvwcnt) {
		this.rvwcnt = rvwcnt;
	}

}
