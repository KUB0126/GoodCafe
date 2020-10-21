package kr.co.goodcoffee.dao;

import java.util.List;

import kr.co.goodcoffee.model.Notice;

public interface NoticeDao {

	List<Notice> list();
	
	void add(Notice item);

	Notice read(int ntcno);

	void update(Notice item);

	void delete(int ntcno);

	void increaseCnt(int ntcno);


}
