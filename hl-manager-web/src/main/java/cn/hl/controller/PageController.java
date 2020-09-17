package cn.hl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.hl.annotation.CheckToken;
import cn.hl.annotation.ExcludeInterceptor;

@Controller
public class PageController {

	@ExcludeInterceptor
	@RequestMapping("/{path}/{page}")
	public String pageFord(@PathVariable("path") String path,@PathVariable("page") String page) {
		System.out.println("path:"+path);
		System.out.println("page:"+page);
		return path+"/"+page;
	}
	@RequestMapping("/hl_index/spring")
	@ExcludeInterceptor
	public String hlIndexSpring() {
		
		return "hl_index/skill/spring/spring_kill";
	}
	@RequestMapping("/hl_index/skill")
	@ExcludeInterceptor
	public String hlIndexSkil(@RequestParam("skillType") String skillType,Model model) {
		model.addAttribute("skillType",skillType);
		return "hl_index/skill/_skill";
	}
	@RequestMapping("/hl_index/editSkill")
	@ExcludeInterceptor
	public String hlIndexEditSkill() {
		
		return "hl_index/skill/edit_skill";
	}
}
