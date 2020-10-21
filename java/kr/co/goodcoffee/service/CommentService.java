package kr.co.goodcoffee.service;

import java.util.List;

import kr.co.goodcoffee.model.Comment;

public interface CommentService {

	List<Comment> viewComment(int inqno);

	void addComment(Comment vo);

//	void updateComment(Comment vo);
	
	void deleteComment(int cmnno);

}
