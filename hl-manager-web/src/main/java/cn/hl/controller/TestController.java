package cn.hl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hl.pojo.Test;
import cn.hl.service.TestService;

@Controller
public class TestController {

	@Autowired
	private TestService testServiceImpl;
	{
		System.out.println("我出生了 TestController 哈哈哈哈");
	}
	@RequestMapping("/")
	public String getTestList(){
		
//		List<Test> findTestList = testServiceImpl.findTestList();
		return "login_index";
	}
	@RequestMapping("/{path}")
	public String page(@PathVariable String path){
		return path;
	}

}
