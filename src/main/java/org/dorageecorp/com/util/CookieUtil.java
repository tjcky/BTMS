package org.dorageecorp.com.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.util.CookieGenerator;

public class CookieUtil {

	public static void createCookie(HttpServletResponse response, String userId, int maxAge) {
		CookieGenerator cookieGenerator = new CookieGenerator();

		cookieGenerator.setCookieDomain("127.0.0.1"); 	// 도메인 설정
		cookieGenerator.setCookieMaxAge(maxAge); 		// 음수로 하면 브라우저가 닫힐때 쿠키 삭제, 초 단위로 설정
		cookieGenerator.setCookieName("userId");
		cookieGenerator.setCookiePath("/"); 			// 모든 경로에 지정

		cookieGenerator.addCookie(response, userId);
	}

	public static Cookie getCookie(HttpServletRequest request, String name) {
		Cookie cookies[] = request.getCookies();

		if (cookies == null) {
			return null;
		}

		for (Cookie cookie : cookies) {
			if (StringUtils.equals(cookie.getName(), name)) {
				return cookie;
			}
		}

		return null;
	}

	public static String getCookieValue(HttpServletRequest request, String name) {
		Cookie cookie = getCookie(request, name);

		if (cookie != null) {
			return cookie.getValue();
		}

		return null;
	}
	
	public static void removeCookie(HttpServletResponse response, String userId) {
		createCookie(response, userId, 0);
	}
}