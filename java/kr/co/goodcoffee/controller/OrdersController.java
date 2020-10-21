package kr.co.goodcoffee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.model.Orders;
import kr.co.goodcoffee.service.OrdersService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	final String path = "orders/";
	
	@Autowired
	OrdersService service;
	
	@GetMapping("/{orderid}/view")
	String view(@PathVariable int orderid, Model model ) {
		Orders item = service.item(orderid);
		model.addAttribute("item", item);
		return path + "view";
	}
	
	@GetMapping("/list")
	String list(Model model,HttpSession session) {
		List<Orders> list = service.list();
		model.addAttribute("list", list);
		Member member = (Member) session.getAttribute("user");
		
		return path + "list";
	}
	
	@GetMapping("/plist")
	String plist(Model model,HttpSession session, Orders item) {
		List<Orders> plist = service.plist(item);
		model.addAttribute("plist", plist);
		Member member = (Member) session.getAttribute("user");
		
		return path + "plist";
	}

	@GetMapping("/{orderid}/delete")
	String delete(@PathVariable int orderid) {
		service.delete(orderid);
		return "redirect:../list";
	}
}
