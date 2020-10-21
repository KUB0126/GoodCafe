package kr.co.goodcoffee.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.goodcoffee.dao.DetailDao;
import kr.co.goodcoffee.dao.OrdersDao;
import kr.co.goodcoffee.model.Detail;
import kr.co.goodcoffee.model.Goods;
import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.model.Orders;
import kr.co.goodcoffee.util.Pager;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	OrdersDao dao;
	
	@Autowired
	DetailDao daoDetail;
	
	@Override
	public List<Orders> list() {
		return dao.list();
	}

	@Override
	public List<Orders> plist(Orders item) {
		return dao.plist(item);
	}
	
	@Override
	public void add(Orders item) {
		dao.add(item);
	}

	@Override
	public Orders item(int orderid) {
		return dao.item(orderid);
	}

	@Override
	public void update(Orders item) {
		dao.update(item);
	}

	@Override
	public void delete(int orderid) {
		dao.delete(orderid);
	}

	@Override
	@Transactional
	public void order(Member member, Map<Integer, Goods> cart) {
		Orders item = new Orders();
		
		int saleprice = 0;
		
		for(Integer gdsid : cart.keySet()) {
			Goods goods = cart.get(gdsid);
			
			saleprice += goods.getGdsprice()* goods.getAmount();
		}
		
		item.setMemid(member.getMemid());
		item.setSaleprice(saleprice);
		
		dao.add(item);
		
		System.out.println(item.getOrderid());
		
		for(Integer gdsid : cart.keySet()) {
			Goods goods = cart.get(gdsid);
			
			Detail detail = new Detail();
			
			detail.setOrderid(item.getOrderid());
			detail.setGdsid(goods.getGdsid());
			detail.setAmount(goods.getAmount());
			
			daoDetail.add(detail);
		}
	}

}
