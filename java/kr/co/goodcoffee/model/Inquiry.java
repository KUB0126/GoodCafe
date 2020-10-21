package kr.co.goodcoffee.model;

import java.util.Date;

public class Inquiry {

	int inqno;
	String inqtitle;
	String inqcontent; 
	String inqwriter;
	Date inqdate;

	public int getInqno() {
		return inqno;
	}

	public void setInqno(int inqno) {
		this.inqno = inqno;
	}

	public String getInqtitle() {
		return inqtitle;
	}

	public void setInqtitle(String inqtitle) {
		this.inqtitle = inqtitle;
	}

	public String getInqcontent() {
		return inqcontent;
	}

	public void setInqcontent(String inqcontent) {
		this.inqcontent = inqcontent;
	}

	public String getInqwriter() {
		return inqwriter;
	}

	public void setInqwriter(String inqwriter) {
		this.inqwriter = inqwriter;
	}

	public Date getInqdate() {
		return inqdate;
	}

	public void setInqdate(Date inqdate) {
		this.inqdate = inqdate;
	}

}
