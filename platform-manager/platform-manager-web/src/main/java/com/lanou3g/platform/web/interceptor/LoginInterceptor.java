package com.lanou3g.platform.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.lanou3g.platform.pojo.SysUser;

/**
 *
 * @Description   登录拦截器
 * @author Denny
 * @date 创建时间：2018年2月5日 上午10:58:23 
 * @version 1.0
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
		
		//此处应该到SESSION中获取值
		HttpSession session = request.getSession();
		SysUser user= (SysUser) session.getAttribute("userBySession");
	 
		// 直接放行
		if(user != null ){
			return true;
 		}
		
		//不符合条件的，跳转到登录界面  
 		request.getRequestDispatcher("/WEB-INF/jsps/index.jsp").forward(request, response);
		return false;
		 
	}

}
