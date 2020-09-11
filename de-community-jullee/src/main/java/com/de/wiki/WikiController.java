
package com.de.wiki;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.de.login.service.SecurityMember;
import com.de.tag.Tags;
import com.de.wiki.service.WikiService;

@Controller
@RequestMapping(value = "/wiki")
public class WikiController {
	
	@Autowired
	WikiService service;
	
	AtomicLong seq = new AtomicLong(1);
		
	
	@RequestMapping("/getStart")
	 public String accountRecovery(HttpServletRequest request, @AuthenticationPrincipal SecurityMember user, Wiki vo) throws Exception { 		
		System.out.println("---wiki start---");		
		if(user!=null) {
			System.out.println("user type -->" +user.getRole());
		}
		return "/wiki/start";
	 }
	

	@RequestMapping("/Help")
	 public String helplist(HttpServletRequest request, @AuthenticationPrincipal SecurityMember user, Wiki vo) throws Exception { 		
		System.out.println("---wiki view---");		
		vo.setSection("h");
		
		return "/wiki/HelpList";
	 }
	@RequestMapping("/view/{wikino}")
	 public String view(HttpServletRequest request,@PathVariable("questionno") int wikino, @AuthenticationPrincipal SecurityMember user, Wiki vo, Model model) throws Exception { 		
		System.out.println("---wiki view---");		
		List<Wiki> help_list = service.getWikiHelp();
		model.addAttribute("result", help_list);
		
		for(int i =0;i<help_list.size();i++){
			System.out.println(help_list.get(i).getTitle());
		}
		
		return "/wiki/view";
	 }
	
	
	@RequestMapping("/saveHelp")
	 public String createHelp(HttpServletRequest request, @AuthenticationPrincipal SecurityMember user, Wiki vo, Model model)throws Exception { 		
		System.out.println("---wiki help create!---");
		
		if(user==null) {
			System.out.println("wiki 문서 작성/수정은 로그인시에만 가능합니다!");
			model.addAttribute("ret", "wiki 문서 작성/수정은 로그인시에만 가능합니다!");
			return "redirect:/login";
			
		} else {		
			System.out.println("== 현재로그인한 계정정보 ==");
			System.out.println("section ==>" +vo.getSection());
			System.out.println("user id ==>" + user.getUserid());
			System.out.println("userno ==>"+ user.getUserno());		
			
			List<Wiki> help_list = service.getWikiHelp();
			model.addAttribute("result", help_list);
			
			for(int i =0;i<help_list.size();i++){
				System.out.println("질문-->"+help_list.get(i).getTitle());
			}
			
			return "/wiki/createHelp";
		}
	 } 
	
	@RequestMapping("/saveTag")
	 public String createTag(HttpServletRequest request, @AuthenticationPrincipal SecurityMember user, Wiki vo, Model model)throws Exception  { 		
		System.out.println("---wiki tag create!---");		
		
		if(user==null) {
			System.out.println("wiki 문서 작성/수정은 로그인시에만 가능합니다!");
			model.addAttribute("ret", "wiki 문서 작성/수정은 로그인시에만 가능합니다!");
			return "redirect:/login";
			
		} else {
			System.out.println("== 현재로그인한 계정정보 ==");
			System.out.println("section ==>" +vo.getSection());
			System.out.println("user id ==>" + user.getUserid());
			System.out.println("userno ==>"+ user.getUserno());
			
			return "/wiki/createTag";
		}
		
	 }
	
	

	@RequestMapping("/save.proc")
	 public String saveHelps(HttpServletRequest request, @AuthenticationPrincipal SecurityMember user, Wiki vo, Model model) throws Exception { 		
		System.out.println("---wiki help create proc---");
		int ret=0;
		
		vo.setUserno(user.getUserno());
		System.out.println("section==?" + vo.getSection());
		
//		vo.setWikino((int)seq.getAndIncrement());
//		System.out.println("wikino" + vo.getWikino());
		
		ret=service.save(vo);			
		
		if(ret==0) {
			System.out.println("도움말 문서 저장 실패");
		} else {			
			service.saveHistory(vo);
			System.out.println("도움말 문서 정상적으로 저장");			
		
		}
	
		return "redirect:/wiki/view";

	} 

}
