package kr.co.goodcoffee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.model.Notice;
import kr.co.goodcoffee.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	final String path = "notice/";

	@Autowired
	NoticeService service;

	// 전체목록
	@GetMapping("/list")
	String list(Model model, HttpSession session) {
		List<Notice> list = service.list(0);
		model.addAttribute("list", list);

		Member member = (Member) session.getAttribute("user");

		return path + "list";
	}

	// 조회
	@GetMapping("/read")
	String read(Notice item, Model model) {
		Notice read = service.read(item.getNtcno());
		model.addAttribute("read", read);
		return path + "read";
	}

	// 추가
	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Notice item) {
		service.add(item);
		return "redirect:list";
	}

	// 변경
	@GetMapping("/update")
	String update(Notice item, Model model, HttpSession session) {
		Notice read = service.read(item.getNtcno());
		model.addAttribute("update", read);

		Member member = (Member) session.getAttribute("user");

		return path + "update";
	}

	@PostMapping("/update")
	String update(Notice item) {
		service.update(item);
		return "redirect:/notice/list";
	}

	// 삭제
	@GetMapping("/delete")
	String delete(Notice item) {
		service.delete(item.getNtcno());
		return "redirect:/notice/list";
	}

}
