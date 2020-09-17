package cn.hl.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.hl.dao.SkillMapper;
import cn.hl.dao.UserMapper;
import cn.hl.jedis.JedisClientPool;
import cn.hl.pojo.User;
import cn.hl.service.UserService;
import cn.hl.utils.CommonConstant;
import cn.hl.utils.CommonResult;
import cn.hl.utils.HlUtils;
import cn.hl.utils.JwtUtil;

/**
 * 
 * @author Administrator
 *	用户实现类
 */
@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private JedisClientPool jedisClientPool;
	@Autowired
	private SkillMapper skillMapper;
	
	/*
	 * (non-Javadoc)
	 * @see cn.hl.service.UserService#registerUser(cn.hl.pojo.User)
	 * 注册用户
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	public CommonResult registerUser(User user) {
		String userId = HlUtils.getOnlyId();
		user.setId(userId);
		userMapper.addUserOfRegister(user);
		//int i=1/0;
		initUserSkill(CommonConstant.skillArray, userId);
		return CommonResult.ok();
	}

	@Override
	public CommonResult loginService(User user) {
//	    user = userMapper.queryUserOfLogin(user);
//		System.out.println(user.getUserName());
		CommonResult cr=new CommonResult();
//		String createJWTToken = JwtUtil.createJWT(6000000, user);
//		user.setToken(createJWTToken);
//		jedisClientPool.set(user.getId(), createJWTToken);
		//添加技术案例
		
		return cr;
	}	
	@Override
	public CommonResult verificationLogin(User user) {
		user = userMapper.queryUserOfLogin(user);
		CommonResult cr=new CommonResult();
		if(user==null){
			cr=cr.ok(CommonConstant.NOT_SOUND.getStatu(), CommonConstant.NOT_SOUND.getMsg());
			return cr;
		}
		String createJWTToken = JwtUtil.createJWT(HlUtils.TOKEN_EXPIRE, user);
		user.setToken(createJWTToken);
		jedisClientPool.set(user.getId(), createJWTToken);
		cr=CommonResult.ok(CommonConstant.SUCCESS.getStatu(), CommonConstant.SUCCESS.getMsg());
		cr.put(HlUtils.DATA,user);
		return cr;
	}
	
//	@Override
//	public CommonResult loginService(User user) {
//		user = userMapper.queryUserOfLogin(user);
//		CommonResult cr=new CommonResult();
//		if(user==null){
//			cr=cr.ok(CommonConstant.NOT_SOUND.getStatu(), CommonConstant.NOT_SOUND.getMsg());
//			return cr;
//		}
//	//	String token = HlUtils.makeToken();
//		String createJWTToken = JwtUtil.createJWT(6000000, user);
//		user.setToken(createJWTToken);
//		jedisClientPool.set(user.getId(), createJWTToken);
//		cr.put(HlUtils.DATA,user);
//		return cr;
//	}

	@Override
	public User findUserById(String userId) {
		User user=userMapper.findUserById(userId);
		Date createDate = user.getCreateDate();
		if(createDate!=null) {
			user.setCreateDateString(HlUtils.dateToString(createDate));
		}
		return user;
	}

	@Override
	public CommonResult updateUserMessageById(User user) {
		CommonResult cr=new CommonResult();
		if(user!=null) {
			if(!HlUtils.isEmpty(user.getId())) {
				userMapper.updateUserMessageById(user);
			}else {
				cr.put(HlUtils.CODE,CommonConstant.ERROR.getStatu());
				cr.put(HlUtils.MSG,CommonConstant.ERROR.getMsg());
			}
		}
		return cr;
	}
	private void initUserSkill(String [] skillArray,String userId) {
		List<Map<String,Object>> skillList=new ArrayList<>();
		for (String skill : skillArray) {
			HashMap<String,Object> hashMap = new HashMap<String, Object>();
			hashMap.put("id", HlUtils.getOnlyId());
			hashMap.put("skillType", skill);
			hashMap.put("userId", userId);
			skillList.add(hashMap);
		}
		skillMapper.initSkillOfUser(skillList);
	}
	
}
