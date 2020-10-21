package kr.co.goodcoffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	final String path = "member/";

	@Autowired
	MemberService service;

	@GetMapping("/list")
	String list(Model model) {
		List<Member> list = service.list();
		model.addAttribute("list", list);
		return path + "list";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Member item) {
		service.add(item);

		return "redirect:list";
	}

	@GetMapping("/{memid}/update")
	String update(@PathVariable String memid, Model model) {
		Member item = service.item(memid);

		model.addAttribute("item", item);

		return path + "update";
	}

	@PostMapping("/{memid}/update")
	String update(@PathVariable String memid, Member item) {
		item.setMemid(memid);

		service.update(item);

		return "redirect:../list";
	}

	@GetMapping("/{memid}/delete")
	String delete(@PathVariable String memid) {
		service.delete(memid);

		return "redirect:../list";
	}
}
