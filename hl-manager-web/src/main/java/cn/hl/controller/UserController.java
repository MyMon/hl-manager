package cn.hl.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hl.annotation.CheckToken;
import cn.hl.pojo.User;
import cn.hl.service.UserService;
import cn.hl.utils.CommonConstant;
import cn.hl.utils.CommonResult;
import cn.hl.utils.HlUtils;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public String toRegisterPage(){
		
		return "ejectpage/register_index";
	}
	@RequestMapping("/senRegister")
	@ResponseBody
	public CommonResult sendRegister(@RequestBody User user){
		CommonResult commonResult = userService.registerUser(user);
		return commonResult;
	}
	@RequestMapping("/toLogin")
	public String toLogin(User user){
		CommonResult commonResult=userService.loginService(user);
//		if(CommonConstant.SUCCESS.getStatu().equals(commonResult.get(HlUtils.CODE))) {
			return "hl_index/hl_index";
//		}
	}
	@RequestMapping("/verificationLogin")
	@ResponseBody
	public CommonResult verificationLogin(@RequestBody User user){
		CommonResult commonResult=userService.verificationLogin(user);
		System.out.println(commonResult);
		return commonResult;
	}
	
	@RequestMapping("/test")
	@CheckToken
	public String userTest() {
		return "token校驗成功";
	}
	@RequestMapping("/findUserById")
	@CheckToken
	@ResponseBody
	public CommonResult findUserById(@RequestBody User user,HttpServletRequest request) {
		user = userService.findUserById(user.getId());
		CommonResult commonResult=new CommonResult();
		commonResult.put("data", user);
//		request.setAttribute("user", user);
		return commonResult;
	}
	@RequestMapping("/updateUserMessage")
	@CheckToken
	@ResponseBody
	public CommonResult updateUserMessage(@RequestBody User user) {
		CommonResult cr = userService.updateUserMessageById(user);
		return cr;
	}
	
}
