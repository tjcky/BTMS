package org.dorageecorp.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dorageecorp.com.util.CookieUtil;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object Handler) throws Exception {
//		if (CookieUtil.existCookieValue(request, "userId") == false) {
//			response.sendRedirect("/login");
//			return false;
//		}

		return true;
	}
}