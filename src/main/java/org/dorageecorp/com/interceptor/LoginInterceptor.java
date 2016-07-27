package org.dorageecorp.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object Handler, ModelAndView modelAndView) throws Exception {
		System.out.println("post");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object Handler) throws Exception {
		System.out.println("pre");
		return true;
	}
}