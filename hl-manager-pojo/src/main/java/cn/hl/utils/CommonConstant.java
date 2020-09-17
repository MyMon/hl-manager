package cn.hl.utils;


/**
 * 
 * @author Administrator
 *	常量枚举类
 */
public enum CommonConstant {

	
	ERROR("100","未知错误"),
	SUCCESS("200","success"),
	FAILURE("300","failure"),
	CONNECT("400","连接错误"),
	EXCEPTION("500","出现异常，请联系管理员"),
	WARNING("600","警告！非法操作。"),
	NOT_SOUND("1001","未查询到");
	private String statu;
	private String msg;
	
	CommonConstant(String statu,String msg){
		this.statu=statu;
		this.msg=msg;
	}
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
