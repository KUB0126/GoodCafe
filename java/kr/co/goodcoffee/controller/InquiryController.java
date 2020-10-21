package kr.co.goodcoffee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.goodcoffee.model.Comment;
import kr.co.goodcoffee.model.Inquiry;
import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.service.CommentService;
import kr.co.goodcoffee.service.InquiryService;

@Controller
@RequestMapping("/inquiry")
public class InquiryController {
	final String path = "inquiry/";

	@Autowired
	InquiryService service;

	@Autowired
	CommentService commentService;

	@GetMapping("/list")
	String List(Model model, HttpSession session) {
		List<Inquiry> list = service.list();
		model.addAttribute("list", list);

		Member member = (Member) session.getAttribute("user");

		return path + "list";
	}

	@GetMapping("/view")
	String view(Inquiry item, Model model) {
		Inquiry view = service.view(item.getInqno());
		model.addAttribute("view", view);

		List<Comment> commentList = commentService.viewComment(item.getInqno());
		model.addAttribute("commentList", commentList);

		return path + "view";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Inquiry item, HttpSession session) {
		Member member = (Member) session.getAttribute("user");
		service.add(item);
		return "redirect:list";
	}

	@GetMapping("/update")
	String update(Inquiry item, Model model, HttpSession session) {
		Inquiry view = service.view(item.getInqno());
		model.addAttribute("update", view);
		Member member = (Member) session.getAttribute("user");
		return path + "update";
	}

	@PostMapping("/update")
	String update(Inquiry item) {
		service.update(item);
		return "redirect:/inquiry/list";
	}
	

	@GetMapping("/delete")
	String delete(Inquiry item) {
		service.delete(item.getInqno());
		return "redirect:/inquiry/list";
	}

	// 댓글 작성
	@PostMapping("/commentAdd")
	String commentAdd(Comment vo, HttpSession session, RedirectAttributes rttr) {
		Member member = (Member) session.getAttribute("user");
		commentService.addComment(vo);
		rttr.addAttribute("inqno", vo.getInqno());
		return "redirect:/inquiry/view";
	}
	
//	//댓글 수정
//	@GetMapping("/commentUpdate")
//	String commentUpdate(Comment vo, Model model) {
//		Comment view = commentService.updateComment(vo.getCmnno());
//		model.addAttribute("commentUpdate", view);
//		return  path + "view";
//	}
//
//	@PostMapping("/commentUpdate")
//	String commentUpdate(HttpServletRequest request,Comment vo) {
//		commentService.updateComment(vo);
//		String referer = request.getHeader("Referer");
//	    return "redirect:"+ referer;
//	}

	// 댓글 삭제 GET
	@GetMapping("/commentDelete")
	String commentDelete(HttpServletRequest request,Comment vo) {
		commentService.deleteComment(vo.getCmnno());
		 String referer = request.getHeader("Referer");
		    return "redirect:"+ referer;
	}
		
}
