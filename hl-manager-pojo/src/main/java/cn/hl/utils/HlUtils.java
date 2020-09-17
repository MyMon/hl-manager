package cn.hl.utils;

import java.util.UUID;

/**
 * 	工具类
 * @author Administrator
 *
 */
public class HlUtils {

	public static final String CODE="code";
	public static final String MSG="msg";
	public static final String DATA="data";
	
	/*
	 * 自定义生成唯一ID
	 */
	public static String getOnlyId(){
		return UUID.randomUUID().toString();
	}
}
