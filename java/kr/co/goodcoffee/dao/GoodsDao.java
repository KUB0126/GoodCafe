package kr.co.goodcoffee.dao;

import java.util.List;

import kr.co.goodcoffee.model.Goods;
import kr.co.goodcoffee.util.Pager;

public interface GoodsDao {
	
	List<Goods> list(Goods item);

	void add(Goods item);

	Goods item(int gdsid);

	void update(Goods item);

	void delete(int gdsid);




}
