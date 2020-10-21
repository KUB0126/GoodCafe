package kr.co.goodcoffee.dao;

import java.util.List;

import kr.co.goodcoffee.model.Comment;

public interface CommentDao {

	List<Comment> viewComment(int inqno);

	void addComment(Comment vo);

//	void updateComment(Comment vo);
//
//	void deleteComment(Comment vo);
//
//	Comment selectComment(int cmnno);

	void deleteComment(int cmnno);

}
