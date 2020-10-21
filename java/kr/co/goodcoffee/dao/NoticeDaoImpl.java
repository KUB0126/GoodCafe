package kr.co.goodcoffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodcoffee.model.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Notice> list() {
		return sql.selectList("notice.list");
	}
	
	@Override
	public void add(Notice item) {
		sql.insert("notice.add",item);
	}

	@Override
	public Notice read(int ntcno) {
		return sql.selectOne("notice.read",ntcno);
	}

	@Override
	public void update(Notice item) {
		sql.update("notice.update",item);
	}

	@Override
	public void delete(int ntcno) {
		sql.delete("notice.delete",ntcno);
	}

	@Override
	public void increaseCnt(int ntcno) {
		sql.update("notice.increaseCnt" ,ntcno);
	}

}
