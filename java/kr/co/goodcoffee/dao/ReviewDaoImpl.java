package kr.co.goodcoffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodcoffee.model.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Review> list() {
		return sql.selectList("review.list");
	}

	@Override
	public void add(Review item) {
		sql.insert("review.add",item);
	}
	
	@Override
	public Review view(int rvwno) {
		return sql.selectOne("review.view",rvwno);
	}

//	@Override
//	public Review item(int rvwno) {
//		return sql.selectOne("review.item",rvwno);
//	}

	@Override
	public void update(Review item) {
		sql.update("review.update",item);
	}

	@Override
	public void delete(int rvwno) {
		sql.delete("review.delete",rvwno);
	}

	@Override
	public void increaseCnt(int rvwno) {
		sql.update("review.increaseCnt" , rvwno);
	}

}
