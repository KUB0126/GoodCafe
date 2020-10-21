package kr.co.goodcoffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodcoffee.dao.ReviewDao;
import kr.co.goodcoffee.model.Review;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDao dao;
	
	@Override
	public List<Review> list(int rvwno) {
		dao.increaseCnt(rvwno);
		return dao.list();
	}

	@Override
	public void add(Review item) {
		dao.add(item);
	}
	
	@Override
	public Review view(int rvwno) {
		dao.increaseCnt(rvwno);
		return dao.view(rvwno);
	}

//	@Override
//	public Review item(int rvwno) {
//		return dao.item(rvwno);
//	}

	@Override
	public void update(Review item) {
		dao.update(item);
	}

	@Override
	public void delete(int rvwno) {
		dao.delete(rvwno);
	}

}
