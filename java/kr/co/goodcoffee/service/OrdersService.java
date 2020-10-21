package kr.co.goodcoffee.service;

import java.util.List;
import java.util.Map;

import kr.co.goodcoffee.model.Goods;
import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.model.Orders;

public interface OrdersService {

	List<Orders> list();

	List<Orders> plist(Orders item);
	
	void add(Orders item);

	Orders item(int orderid);

	void update(Orders item);

	void delete(int orderid);

	void order(Member member, Map<Integer, Goods> cart);




}
