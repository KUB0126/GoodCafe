package kr.co.goodcoffee.service;

import java.util.List;

import kr.co.goodcoffee.model.Notice;

public interface NoticeService {

	List<Notice> list(int ntcno);
	
	void add(Notice item);

	Notice read(int ntcno);

	void update(Notice item);

	void delete(int ntcno);

}
