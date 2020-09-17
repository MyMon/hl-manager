package cn.hl.service;

import cn.hl.pojo.User;
import cn.hl.utils.CommonResult;

/**\
 * 
 * @author Administrator
 *	用户接口
 */
public interface UserService {

	
	//注册接口
	CommonResult registerUser(User user);

	CommonResult loginService(User user);
	
	CommonResult verificationLogin(User user);

	User findUserById(String userId);
	
	CommonResult updateUserMessageById(User user);
}
