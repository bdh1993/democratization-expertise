package com.de.login;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.de.login.service.LoginService;
import com.de.login.service.MemberService;
import com.de.login.service.SecurityMember;
import com.de.login.vo.LoginVO;


@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@Autowired
	LoginService service;
	
	@RequestMapping("")
	 public String login() {
		System.out.println("----login page----");
	    return "/login/login";
	  } 

	@RequestMapping("/logout")
	 public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response)
				throws Exception{ 		
		System.out.println("---logout----");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/";
	 } 
	
	
	
	@RequestMapping("/login")
	 public String loginSuccess(Model model, @AuthenticationPrincipal SecurityMember user, LoginVO vo ) throws Exception{
		System.out.println("<<--- controller for normal loginSuccess-->> ");
	
		if(user!=null) {
		System.out.println("user id --->" + user.getUserid());
		System.out.println("user pw --->" + user.getUserpassword());
		System.out.println("user no --- >" + user.getUserno());
		}
		model.addAttribute("loginUser", user);
		
		// 유저가 회사계정이냐 일반 유저이냐에 따라 프로필 페이지 변경
		vo = service.getUserInfo(user.getUserid());
		
		System.out.println("대표 유저 여부==?? "+vo.getRepresentat());
		Integer val = null;
		
		if(vo.getRepresentat()==1) {
			return "redirect:/enterprises/activity/"+vo.getEnterpriseno();

		} else {
			return "redirect:/users/activity/"+user.getUserno();
				}
		
		//		return "/users/profile";
	} 

	 @RequestMapping("/message")
	 public String message( HttpServletRequest request ) throws Exception {
		 return "/cmmn/message";
		 
	 }
	 
//	 private HttpSession httpSession;
//	 @RequestMapping("/me")
//	 public Map<String, Object> me( HttpServletRequest request ) throws Exception {
//		 Map<String, Object> response = new LinkedHashMap<>();
//	        response.put("profile", httpSession.getAttribute("user"));
//	        System.out.println(response.get("profile"));
//	        return response;
//		 
//	 }
	 
	
	
}
