package kr.co.goodcoffee.model;

import java.util.Date;

public class Comment {

	int inqno;
	int cmnno;
	String cmntext;
	String writer;
	Date cmndate;

	public int getInqno() {
		return inqno;
	}

	public void setInqno(int inqno) {
		this.inqno = inqno;
	}

	public int getCmnno() {
		return cmnno;
	}

	public void setCmnno(int cmnno) {
		this.cmnno = cmnno;
	}

	public String getCmntext() {
		return cmntext;
	}

	public void setCmntext(String cmntext) {
		this.cmntext = cmntext;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getCmndate() {
		return cmndate;
	}

	public void setCmndate(Date cmndate) {
		this.cmndate = cmndate;
	}

}
