package cn.hl.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hl.annotation.CheckToken;
import cn.hl.pojo.Stick;
import cn.hl.pojo.User;
import cn.hl.service.StickService;
import cn.hl.utils.CommonResult;
import cn.hl.utils.Pager;

@Controller
@RequestMapping("/stick")
public class StickManagerController {

	@Autowired
	private StickService stickService;

	@RequestMapping("/queryStickByUserId")
	@ResponseBody
	@CheckToken
	public CommonResult findStickMessageByUserId(@RequestBody Map<String,String> map) {
		System.out.println("进入findStickMessageByUserId");
		CommonResult findStickMessageByUserId = stickService.findStickMessageByUserId(map);
		return findStickMessageByUserId;
	}
	@RequestMapping("/addStick")
	@ResponseBody
	@CheckToken
	public CommonResult addStick(@RequestBody Stick stick) {
		System.out.println("进入addStick"+stick);
		CommonResult cr = stickService.addStickMessage(stick);
		return cr;
	}

}
