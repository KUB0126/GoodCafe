package kr.co.goodcoffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodcoffee.dao.NoticeDao;
import kr.co.goodcoffee.model.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDao dao;

	@Override
	public List<Notice> list(int ntcno) {
		dao.increaseCnt(ntcno);
		return dao.list();
	}
	
	@Override
	public void add(Notice item) {
		dao.add(item);
	}

	@Override
	public Notice read(int ntcno) {
		dao.increaseCnt(ntcno);
		return dao.read(ntcno);
	}

	@Override
	public void update(Notice item) {
		dao.update(item);
	}

	@Override
	public void delete(int ntcno) {
		dao.delete(ntcno);
	}


}
