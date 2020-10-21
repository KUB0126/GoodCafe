package kr.co.goodcoffee.service;

import java.util.List;

import kr.co.goodcoffee.model.Member;

public interface MemberService {

	List<Member> list();

	void add(Member item);

	Member item(String memid);

	void update(Member item);

	void delete(String memid);
	
	boolean login(Member item);

	int checkId(String id);

}
