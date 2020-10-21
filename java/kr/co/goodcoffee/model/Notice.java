package kr.co.goodcoffee.model;

import java.util.Date;

public class Notice {

	int ntcno;
	String ntctitle;
	String ntccontent;
	Date ntcdate;
	int ntccnt;

	public int getNtcno() {
		return ntcno;
	}

	public void setNtcno(int ntcno) {
		this.ntcno = ntcno;
	}

	public String getNtctitle() {
		return ntctitle;
	}

	public void setNtctitle(String ntctitle) {
		this.ntctitle = ntctitle;
	}

	public String getNtccontent() {
		return ntccontent;
	}

	public void setNtccontent(String ntccontent) {
		this.ntccontent = ntccontent;
	}

	public Date getNtcdate() {
		return ntcdate;
	}

	public void setNtcdate(Date ntcdate) {
		this.ntcdate = ntcdate;
	}

	public int getNtccnt() {
		return ntccnt;
	}

	public void setNtccnt(int ntccnt) {
		this.ntccnt = ntccnt;
	}

}
