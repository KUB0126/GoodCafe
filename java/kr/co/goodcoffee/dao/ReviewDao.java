package kr.co.goodcoffee.dao;

import java.util.List;

import kr.co.goodcoffee.model.Review;

public interface ReviewDao {

	List<Review> list();

	void add(Review item);

	Review view(int rvwno);
	
//	Review item(int rvwno);

	void update(Review item);

	void delete(int rvwno);

	void increaseCnt(int rvwno);
}
