package cn.hl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.auth0.jwt.JWT;

import cn.hl.exception.GlobalException;
import cn.hl.pojo.User;
import cn.hl.service.UserService;
import cn.hl.utils.CommonConstant;
import cn.hl.utils.CommonResult;
import cn.hl.utils.HlUtils;
import cn.hl.utils.JwtUtil;
import io.jsonwebtoken.ExpiredJwtException;

@Controller
@RequestMapping("/jwt")
public class JwtCheckController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/checkJwt")
	@ResponseBody
	public CommonResult checkJwt(@RequestBody User user) throws GlobalException {
		CommonResult cr=new CommonResult();
		if(user==null &&HlUtils.isEmpty(user.getToken())) {
			cr.put(HlUtils.CODE, CommonConstant.WARNING.getStatu());
			cr.put(HlUtils.MSG, CommonConstant.WARNING.getMsg());
			return cr;
		}
		String token=user.getToken();
		 // 获取 token 中的 user id
        String userId;
        userId = JWT.decode(token).getClaim("id").asString();
        if(HlUtils.isEmpty(userId)) {
        	cr.put(HlUtils.CODE, CommonConstant.WARNING.getStatu());
			cr.put(HlUtils.MSG, CommonConstant.WARNING.getMsg());
			return cr;
        }
        user = userService.findUserById(userId);
        if (user == null) {
        	cr.put(HlUtils.CODE, CommonConstant.NOT_SOUND.getStatu());
			cr.put(HlUtils.MSG, CommonConstant.NOT_SOUND.getMsg());
			return cr;
        }
        Boolean verify=false;
        try {
        	 verify = JwtUtil.isVerify(token, user);
		} catch (ExpiredJwtException e) {
			throw new GlobalException("token失效了");
		}
        if (!verify) {
         	cr.put(HlUtils.CODE, CommonConstant.ERROR.getStatu());
 			cr.put(HlUtils.MSG, CommonConstant.ERROR.getMsg());
 			return cr;
         }
		return cr;
	}
	
}
