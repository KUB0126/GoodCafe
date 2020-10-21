package kr.co.goodcoffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodcoffee.model.Comment;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Comment> viewComment(int inqno) {
		return sql.selectList("comment.view", inqno);
	}

	@Override
	public void addComment(Comment vo) {
		sql.insert("comment.add", vo);		
	}

	@Override
	public void deleteComment(int cmnno) {
		sql.delete("comment.delete",cmnno);
	}
	
	

//	@Override
//	public void updateComment(Comment vo) {
//		sql.update("comment.update",vo);
//	}
//
//	@Override
//	public void deleteComment(Comment vo) {
//		sql.delete("comment.delete",vo);
//	}
//
//	@Override
//	public Comment selectComment(int cmnno) {
//		return sql.selectOne("comment.select",cmnno);
//	}




}
