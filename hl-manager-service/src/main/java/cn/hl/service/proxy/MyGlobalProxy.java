package cn.hl.service.proxy;

import java.lang.reflect.Method;

import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import cn.hl.pojo.User;
import cn.hl.service.impl.UserServiceImpl;

/**
 * 
 * @author Administrator
 *	全局事务代理
 */
public class MyGlobalProxy implements MethodInterceptor {

	//定义获取代理对象方法
    public Object getCglibProxy(Object objectTarget){
       
        Enhancer enhancer = new Enhancer();
       
        //设置父类,因为Cglib是针对指定的类生成一个子类，所以需要指定父类
        enhancer.setSuperclass(objectTarget.getClass());
        enhancer.setCallback(this); // 设置回调 
        Object result = enhancer.create(); // 创建并返回代理对象
        
        return result;
    }
       
    //重写拦截方法
    @Override
    public Object intercept(Object obj, Method method, Object[] args, MethodProxy proxy) throws Throwable {
        System.out.println("Cglib动态代理，监听开始！");
        Object invoke=null;
        try {
        	 // 方法执行，参数：target 目标对象 args参数数组
        	invoke = proxy.invokeSuper(obj, args);
        	System.out.println(invoke);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("出现异常");
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
        System.out.println("Cglib动态代理，监听结束！");
        return invoke;
    }
    
    // 测试方法
    public static void main(String[] args) {
    	
    	// 实例化CglibProxy对象
    	MyGlobalProxy cglib = new MyGlobalProxy(); 
        
        // 获取代理对象
    	UserServiceImpl user =  (UserServiceImpl) cglib.getCglibProxy(new UserServiceImpl());
       
        // 执行删除方法
        user.registerUser(new User());
    }

}
