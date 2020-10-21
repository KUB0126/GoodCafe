package kr.co.goodcoffee.model;

import java.util.Date;
import java.util.List;

public class Orders {

	int orderid;
	String memid;
	int saleprice;
	Date orderdate;
	
	String name;
	
	List<Detail> detail;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Detail> getDetail() {
		return detail;
	}

	public void setDetail(List<Detail> detail) {
		this.detail = detail;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public int getSaleprice() {
		return saleprice;
	}

	public void setSaleprice(int saleprice) {
		this.saleprice = saleprice;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

}
