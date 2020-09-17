package cn.hl.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hl.pojo.Stick;
import cn.hl.pojo.User;

public interface StickMapper {

	//查询总页数
	Integer queryStickCountByUserId(@Param("userId")String userId);
	
	List<Stick> queryStickByUserId(@Param("pageNumber")int pageNumber,@Param("limitSize")int limitSize,@Param("id")String id);

	void addStickMessage(@Param("stick") Stick stick);
}
