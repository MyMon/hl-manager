package cn.hl.resolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;

import cn.hl.utils.CommonConstant;
import cn.hl.utils.CommonResult;
import cn.hl.utils.RequestJsonException;
import cn.hl.utils.RequestViewException;

/**
 * 
 * @author Administrator
 * @Description 全局异常处理
 */
@Order(-1000)
public class IntegrateException implements HandlerExceptionResolver{

	private static final Logger logger=Logger.getLogger(IntegrateException.class);
	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object obj,
			Exception exc) {
		logger.info("============Exception start================");
		logger.error("", exc);
		logger.info("============Exception end================");
		//判断是否为ajax请求，默认不是
        boolean isAjaxRequest = false;  
        //这段代码能够得知是否为ajax请求，也就是我们说的json请求
        if(!StringUtils.isBlank(request.getContentType()) && request.getContentType().equals("application/json")){  
            isAjaxRequest = true; 
        }
        //如果是ajax请求
        if(isAjaxRequest) {
             return returnJsonModel(exc);
        }else {
        	 return reutrnViewModel(exc);
        }
	}
	private ModelAndView returnJsonModel(Exception exc){
		RequestJsonException  requestJsonException = null;
    	if(exc instanceof RequestJsonException) {
    		requestJsonException = (RequestJsonException) exc;
    		requestJsonException.setMessage(CommonConstant.EXCEPTION.getMsg());
        }else {
            //如果抛出的不是系统自定义的异常则重新构造一个未知错误异常
            //这里我就也有RequestJsonException省事了，实际中应该要再定义一个新的异常
        	requestJsonException = new RequestJsonException ("系统未知错误,请联系管理员");
        }
    	String message = requestJsonException.getMessage();
		 //向前台返回错误信息
        ModelAndView model = new ModelAndView();
        /*使用FastJson提供的FastJsonJsonView视图返回，不需要捕获异常*/
        FastJsonJsonView view = new FastJsonJsonView();
        @SuppressWarnings("static-access")
		CommonResult cr=new CommonResult().error(message);
        view.setAttributesMap(cr);
        model.setView(view);
        return model;
	}
	/*
	 * 待完善  错误页面暂时没有
	 */
	private ModelAndView reutrnViewModel(Exception exc){
		//如果不是ajax请求 那么异常后需要返回页面
    	RequestViewException requestViewException = null;
        //如果抛出的异常类型是我们预想的，会想前台返回我们指定在参数里的页面
    	if(exc instanceof RequestViewException) {
    		requestViewException = (RequestViewException) exc;
    		requestViewException.setMessage(CommonConstant.EXCEPTION.getMsg());
        }else {
            //这里的500是我资源下的500.jsp，使用了mvc的映射省去了前缀后缀
            //系统默认跳转到500页面
        	requestViewException = new RequestViewException("500"); 
        }
    	 ModelAndView model = new ModelAndView();
    	 model.setViewName(requestViewException.getMessage());
    	 return model;
	}

}
