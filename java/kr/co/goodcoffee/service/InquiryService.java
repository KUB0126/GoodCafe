package kr.co.goodcoffee.service;

import java.util.List;

import kr.co.goodcoffee.model.Inquiry;

public interface InquiryService {

	List<Inquiry> list();

	Inquiry view(int inqno);

	void add(Inquiry item);

	void update(Inquiry item);

	void delete(int inqno);



}
