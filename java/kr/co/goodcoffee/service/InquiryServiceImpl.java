package kr.co.goodcoffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodcoffee.dao.InquiryDao;
import kr.co.goodcoffee.model.Inquiry;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	InquiryDao dao;

	@Override
	public List<Inquiry> list() {
		return dao.list();
	}

	@Override
	public Inquiry view(int inqno) {
		return dao.view(inqno);
	}

	@Override
	public void add(Inquiry item) {
		dao.add(item);
	}

	@Override
	public void update(Inquiry item) {
		dao.update(item);
	}

	@Override
	public void delete(int inqno) {
		dao.delete(inqno);
	}

}
