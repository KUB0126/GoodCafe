package kr.co.goodcoffee.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.goodcoffee.model.Comment;
import kr.co.goodcoffee.model.Goods;
import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.service.GoodsService;
import kr.co.goodcoffee.service.OrdersService;
import kr.co.goodcoffee.util.Pager;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	final String path = "goods/";
	
	@Autowired
	GoodsService service;
	
	@Autowired
	OrdersService serviceOrders;

	final String uploadPath = "c://upload/";
	
	@GetMapping("/order")
	String order(HttpSession session) {
		@SuppressWarnings("unchecked")
		Map<Integer, Goods> cart = (Map<Integer, Goods>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Integer, Goods>();
			session.setAttribute("cart", cart);
		}
		Member member = (Member) session.getAttribute("user");
		serviceOrders.order(member,cart);
			return "redirect:list?gdsdivision=coffee";
	}

	@GetMapping("/cart")
	String cart(Integer gdsid, HttpSession session) {
		@SuppressWarnings("unchecked")
		Map<Integer, Goods> cart = (Map<Integer, Goods>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Integer, Goods>();
			session.setAttribute("cart", cart);
		}
		
		if(gdsid != null) {
			Goods item = service.item(gdsid);
			
			Goods goods = cart.get(gdsid);
			
			if(goods == null)
				cart.put(gdsid, item);
			else
				goods.setAmount(goods.getAmount() + 1);
		}
		return path + "cart";
	}
	
	
	@GetMapping("/list")
	String list(Model model, Goods item) {
		List<Goods> list = service.list(item);
		model.addAttribute("list", list);
		return path + "list";
	} 
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Goods item) {
		MultipartFile upload = item.getUploadFile();
		if(upload != null && upload.getSize() > 1) {
			try {
				String filename = upload.getOriginalFilename();
				item.setGdsimage(filename);
				upload.transferTo(new File(uploadPath  + filename));
				service.add(item);	//DB에 저장
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:list?gdsdivision=coffee";
	}

	@GetMapping("/{gdsid}/update")
	String update(@PathVariable int gdsid, Model model) {
		Goods item = service.item(gdsid);
		model.addAttribute("item", item);
		return path + "update";
	}

	@PostMapping("/{gdsid}/update")
	String update(@PathVariable int gdsid, Goods item) {
		item.setGdsid(gdsid);
		service.update(item);
		return "redirect:list";
	}

	@GetMapping("/{gdsid}/delete")
	String delete(@PathVariable int gdsid) {
		service.delete(gdsid);
		return "redirect:../list?gdsdivision=coffee";
	}
}
