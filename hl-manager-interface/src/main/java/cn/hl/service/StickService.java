package cn.hl.service;

import java.util.Map;

import cn.hl.pojo.Stick;
import cn.hl.utils.CommonResult;

public interface StickService {

	public CommonResult findStickMessageByUserId(Map<String, String> map);
	
	public CommonResult addStickMessage(Stick stick);

}
