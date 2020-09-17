package cn.hl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hl.annotation.CheckToken;
import cn.hl.pojo.Skill;
import cn.hl.service.SkillService;
import cn.hl.utils.CommonResult;

@Controller
@RequestMapping("/skill")
public class SkillManagerController {

	@Autowired
	private SkillService skillServic;

	@RequestMapping("/addSkill")
	@ResponseBody
	@CheckToken
	public CommonResult addSkill(@RequestBody Skill skill) {
		System.out.println("进入addSkill"+skill);
		CommonResult cr = skillServic.addSkillMessage(skill);
		return cr;
	}
	@RequestMapping("/updateSkill")
	@ResponseBody
	@CheckToken
	public CommonResult updateSkill(@RequestBody Skill skill) {
		System.out.println("进入updateSkill"+skill);
		CommonResult cr = skillServic.updateSkillMessage(skill);
		return cr;
	}
	@RequestMapping("/querySkill")
	@ResponseBody
	@CheckToken
	public CommonResult querySkill(@RequestBody Skill skill) {
		CommonResult cr = skillServic.querySkillByType(skill);
		return cr;
	}
}
