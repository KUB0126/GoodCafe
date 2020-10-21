package kr.co.goodcoffee.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.goodcoffee.model.Member;


public class AdminIntercepter extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		Member member = (Member) session.getAttribute("user");
		if(member == null)
			response.sendRedirect("/login");
		else if(!"admin".equals(member.getMemid()))
			response.sendRedirect("/");
		else 
			return true;
		
		return false;
		
	}

}
