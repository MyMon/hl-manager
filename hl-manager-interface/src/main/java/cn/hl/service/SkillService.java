package cn.hl.service;

import cn.hl.pojo.Skill;
import cn.hl.utils.CommonResult;

public interface SkillService {

	
	public CommonResult addSkillMessage(Skill skill);
	
	public CommonResult updateSkillMessage(Skill skill);
	
	public CommonResult querySkillByType(Skill skill);

}
