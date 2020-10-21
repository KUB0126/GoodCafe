package kr.co.goodcoffee.dao;

import java.util.List;

import kr.co.goodcoffee.model.Orders;
import kr.co.goodcoffee.util.Pager;

public interface OrdersDao {

	List<Orders> list();

	List<Orders> plist(Orders item);
	
	void add(Orders item);

	Orders item(int orderid);

	void update(Orders item);

	void delete(int orderid);


}
