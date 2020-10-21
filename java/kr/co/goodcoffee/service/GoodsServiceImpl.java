package kr.co.goodcoffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodcoffee.dao.GoodsDao;
import kr.co.goodcoffee.model.Goods;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	GoodsDao dao;

	@Override
	public List<Goods> list(Goods item) {
		return dao.list(item);
	}

	@Override
	public void add(Goods item) {
		dao.add(item);
	}

	@Override
	public Goods item(int gdsid) {
		return dao.item(gdsid);
	}

	@Override
	public void update(Goods item) {
		dao.update(item);
	}

	@Override
	public void delete(int gdsid) {
		dao.delete(gdsid);
	}

}
