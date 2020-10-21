package kr.co.goodcoffee.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.goodcoffee.model.Member;
import kr.co.goodcoffee.model.Review;
import kr.co.goodcoffee.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	final String path ="review/";
	
	@Autowired
	ReviewService service;
	
	final String uploadPath = "c://upload/";
	
	@GetMapping("/list")
	String list(Model model, HttpSession session) {
		List<Review>list = service.list(0);
		model.addAttribute("list", list);
		
		Member member = (Member) session.getAttribute("user");
		
		return path + "list";
	}
	
	@GetMapping("/view")
	String view (Review item,Model model) {
		Review view = service.view(item.getRvwno());
		model.addAttribute("view", view);
		return path +"view";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Review item, HttpSession session) {
		Member member = (Member) session.getAttribute("user");
		
		MultipartFile upload = item.getUploadFile();
		if(upload != null && upload.getSize() > 1) {
			try {
				String filename = upload.getOriginalFilename();
				item.setRvwimg(filename);
				upload.transferTo(new File(uploadPath  + filename));
				service.add(item);	//DB에 저장
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:list";
	}
	
	@GetMapping("/update")
	String update(Review item,Model model, HttpSession session) {
		Review view = service.view(item.getRvwno());
		model.addAttribute("update",view);
		
		Member member = (Member) session.getAttribute("user");
		
		return path + "update";
	}
	
	@PostMapping("/update")
	String update(Review item) {
		
		MultipartFile upload = item.getUploadFile();
		if(upload != null && upload.getSize() > 1) {
			try {
				String filename = upload.getOriginalFilename();
				item.setRvwimg(filename);
				upload.transferTo(new File(uploadPath  + filename));
				service.update(item);
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		
		return "redirect:/review/list";
	}
	@GetMapping("/delete")
	String delete(Review item) {
		service.delete(item.getRvwno());
		return "redirect:/review/list";
	}
}


