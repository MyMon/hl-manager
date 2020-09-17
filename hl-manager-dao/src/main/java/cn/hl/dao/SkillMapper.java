package cn.hl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.hl.pojo.Skill;


 
public interface SkillMapper {

	
	void addSkillMessage(@Param("skill") Skill skill);
	
	void updateSkillMessage(@Param("skill") Skill skill);
	
	Skill querySkillByType(@Param("skill") Skill skill);
	
	void initSkillOfUser(@Param("list")List<Map<String,Object>> list);
	
}
