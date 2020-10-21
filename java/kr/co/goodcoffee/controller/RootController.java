package kr.co.goodcoffee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.service.MemberService;

@Controller
@RequestMapping("/")
public class RootController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/")
	String index() {
		return "index";
	}
	
	@ResponseBody
	@GetMapping("/checkID")
	String checkId(String id) {
		if(service.checkId(id) > 0)
			return "FAIL";
			
		return "OK";
		
	}
	
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	String signup(Member item) {
		service.add(item);
		
		return"redirect:/";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(Member item, HttpSession session) {
		if(service.login(item)) {
			session.setAttribute("user", item);
		
			return "redirect:/";
		}
		return "login";
	}
	
	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
}
