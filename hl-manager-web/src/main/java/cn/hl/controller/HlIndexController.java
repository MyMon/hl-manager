package cn.hl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hl.annotation.CheckToken;
import cn.hl.pojo.User;

@Controller
@RequestMapping("/index")
public class HlIndexController {

	
	@RequestMapping("/hl_index")
	@CheckToken
	public String hl_index(User user){
		System.out.print(user.getToken());
//		List<Test> findTestList = testServiceImpl.findTestList();
		return "hl_index/hl_index";
	}
}
