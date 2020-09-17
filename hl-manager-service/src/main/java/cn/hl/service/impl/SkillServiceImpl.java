package cn.hl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hl.dao.SkillMapper;
import cn.hl.pojo.Skill;
import cn.hl.service.SkillService;
import cn.hl.utils.CommonConstant;
import cn.hl.utils.CommonResult;
import cn.hl.utils.HlUtils;

@Service
public class SkillServiceImpl implements SkillService{

	@Autowired
	private SkillMapper skillMapper;
	
	@Override
	public CommonResult addSkillMessage(Skill skill) {
		CommonResult cr=new CommonResult();
		skill.setId(HlUtils.getOnlyId());
		skillMapper.addSkillMessage(skill);
		return cr;
	}

	@Override
	public CommonResult querySkillByType(Skill skill) {
		CommonResult cr=new CommonResult();
		cr.put(HlUtils.DATA, skillMapper.querySkillByType(skill));
		return cr;
	}

	@Override
	public CommonResult updateSkillMessage(Skill skill) {
		CommonResult cr=new CommonResult();
		skillMapper.updateSkillMessage(skill);
		return cr;
	}

}
