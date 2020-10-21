package kr.co.goodcoffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodcoffee.dao.MemberDao;
import kr.co.goodcoffee.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> list() {
		return dao.list();
	}

	@Override
	public void add(Member item) {
		dao.add(item);
	}

	@Override
	public Member item(String memid) {
		return dao.item(memid);
	}

	@Override
	public void update(Member item) {
		dao.update(item);
	}

	@Override
	public void delete(String memid) {
		dao.delete(memid);
	}

	@Override
	public boolean login(Member item) {
		if (dao.login(item) == 1)
			return true;
		
		return false;
	}

	@Override
	public int checkId(String id) {
		return dao.checkId(id);
	}

}
