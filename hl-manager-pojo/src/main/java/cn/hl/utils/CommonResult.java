package cn.hl.utils;

import java.util.HashMap;

/**
 * 
 * @author Administrator
 *	统一返回自定义类
 */
public class CommonResult extends HashMap<String,Object>{

	
	public CommonResult(){
		put(HlUtils.CODE,CommonConstant.SUCCESS.getStatu());
		put(HlUtils.MSG,CommonConstant.SUCCESS.getMsg());
	}
	/*
	 *	返回成功 
	 */
	public static CommonResult ok(){
		return new CommonResult();
	}
	public static CommonResult ok(String msg){
		CommonResult commonResult = new CommonResult();
		commonResult.put(HlUtils.MSG, msg);
		return  commonResult;
	}
	public static CommonResult ok(String code,String msg){
		CommonResult commonResult = new CommonResult();
		commonResult.put(HlUtils.CODE, code);
		commonResult.put(HlUtils.MSG, msg);
		return commonResult;
	}
	/*
	 * 返回错误
	 */
	public static CommonResult error(){
		return error(CommonConstant.EXCEPTION.getStatu(),CommonConstant.EXCEPTION.getMsg()); 
	}
	public static CommonResult error(String msg){
		return error(CommonConstant.EXCEPTION.getStatu(),msg);
	}
	public static CommonResult error(String code ,String msg){
		CommonResult commonResult = new CommonResult();
		commonResult.put(HlUtils.CODE, code);
		commonResult.put(HlUtils.MSG, msg);
		return commonResult;
	}
	public CommonResult put(String key,Object value){
		super.put(key, value);
		return this;
	}
	
}

