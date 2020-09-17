package cn.hl.utils;

/**
 * 
 * @author Administrator
 * @Description 自定义页面请求异常处理
 */
public class RequestViewException extends Exception {

	private String message;
	public RequestViewException(String message){
		super(message);
		this.message=message;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
