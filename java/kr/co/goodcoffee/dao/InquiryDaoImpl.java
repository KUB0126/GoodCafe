package kr.co.goodcoffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodcoffee.model.Inquiry;

@Repository
public class InquiryDaoImpl implements InquiryDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Inquiry> list() {
		return sql.selectList("inquiry.list");
	}

	@Override
	public Inquiry view(int inqno) {
		return sql.selectOne("inquiry.view",inqno);
	}

	@Override
	public void add(Inquiry item) {
		sql.insert("inquiry.add",item);
	}

	@Override
	public void update(Inquiry item) {
		sql.update("inquiry.update",item);
	}

	@Override
	public void delete(int inqno) {
		sql.delete("inquiry.delete",inqno);
	}

}
