package kr.co.goodcoffee.service;

import java.util.List;

import kr.co.goodcoffee.model.Review;

public interface ReviewService {

	List<Review> list(int rvwno);
	
	void add(Review item);

	Review view(int rvwno);
	
//	Review item(int rvwno);

	void update(Review item);

	void delete(int rvwno);

}
