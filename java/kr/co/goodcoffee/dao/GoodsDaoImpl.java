package kr.co.goodcoffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodcoffee.model.Goods;
import kr.co.goodcoffee.util.Pager;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Goods> list(Goods item) {
		return sql.selectList("goods.list", item);
	}

	@Override
	public void add(Goods item) {
		sql.insert("goods.add",item);
	}

	@Override
	public Goods item(int gdsid) {
		return sql.selectOne("goods.item",gdsid);
	}

	@Override
	public void update(Goods item) {
		sql.update("goods.update",item);
	}

	@Override
	public void delete(int gdsid) {		
		sql.delete("goods.delete",gdsid);
	}

}
