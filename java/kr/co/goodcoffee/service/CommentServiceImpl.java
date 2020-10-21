package kr.co.goodcoffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodcoffee.dao.CommentDao;
import kr.co.goodcoffee.model.Comment;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDao dao;
	
	@Override
	public List<Comment> viewComment(int inqno) {
		return dao.viewComment(inqno);
	}

	@Override
	public void addComment(Comment vo) {
		dao.addComment(vo);
	}

	@Override
	public void deleteComment(int cmnno) {
		dao.deleteComment(cmnno);
	}

	

//	@Override
//	public void updateComment(Comment vo) {
//		dao.updateComment(vo);
//	}
//
//	@Override
//	public void deleteComment(Comment vo) {
//		dao.deleteComment(vo);
//	}
//
//	@Override
//	public Comment selectComment(int cmnno) {
//		return dao.selectComment(cmnno);
//	}


}
