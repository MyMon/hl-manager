package cn.hl.dao;

import org.apache.ibatis.annotations.Param;

import cn.hl.pojo.User;

public interface UserMapper {

	//注册用户
	void addUserOfRegister(@Param(value = "user") User user);

	User queryUserOfLogin(@Param (value="user") User user);

	public User findUserById(@Param(value="id")String userId);
	
	void updateUserMessageById(@Param (value="user")User user);
}
