package cn.hl.utils;

/**
 * 
 * @author Administrator
 * @Description 自定义json请求异常处理器
 */

public class RequestJsonException extends Exception{

	//异常信息
	private String message;

	public RequestJsonException(String message){
		super(message);
		this.message = message;
	}
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
