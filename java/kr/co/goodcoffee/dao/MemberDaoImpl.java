package kr.co.goodcoffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodcoffee.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Member> list() {
		return sql.selectList("member.list");
	}

	@Override
	public void add(Member item) {
		sql.insert("member.add",item);
	}

	@Override
	public Member item(String memid) {
		return sql.selectOne("member.item",memid);
	}

	@Override
	public void update(Member item) {
		sql.update("member.update",item);
	}

	@Override
	public void delete(String memid) {
		sql.delete("member.delete",memid);
	}

	@Override
	public int login(Member item) {
		return sql.selectOne("member.login",item);
	}

	@Override
	public int checkId(String id) {
		return sql.selectOne("member.checkid",id);
	}

}
