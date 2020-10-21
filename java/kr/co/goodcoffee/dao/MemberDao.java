package kr.co.goodcoffee.dao;

import java.util.List;

import kr.co.goodcoffee.model.Member;

public interface MemberDao {

	List<Member> list();

	void add(Member item);

	Member item(String memid);

	void update(Member item);

	void delete(String memid);

	int login(Member item);

	int checkId(String id);

}
