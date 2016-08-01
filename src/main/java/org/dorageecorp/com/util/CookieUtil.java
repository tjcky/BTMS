package org.dorageecorp.com.util;

import java.util.Arrays;
import java.util.stream.Stream;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.util.CookieGenerator;

public class CookieUtil {

	public static void createCookie(HttpServletResponse response, String name, String value, int maxAge) {		
		CookieGenerator cookieGenerator = new CookieGenerator();

		cookieGenerator.setCookieMaxAge(maxAge); 	// 음수로 하면 브라우저가 닫힐때 쿠키 삭제, 초단위로 설정
		cookieGenerator.setCookieName(name);
		cookieGenerator.setCookiePath("/"); 		// 모든 경로에 지정
		
		cookieGenerator.addCookie(response, value);
	}

	public static Cookie getCookie(HttpServletRequest request, String name) { 
		Cookie cookies[] = request.getCookies();

		if (cookies == null) {
			return null;
		}

		Stream<Cookie> cookieStream = Arrays.stream(cookies);
		return cookieStream.filter(w -> w.getName().equals(name)).findFirst().orElse(null);
	}

	public static String getCookieValue(HttpServletRequest request, String name) {
		Cookie cookie = getCookie(request, name);

		if (cookie != null) {
			return cookie.getValue();
		}

		return null;
	}
	
	public static boolean existCookieValue(HttpServletRequest request, String name) {
		return CookieUtil.getCookie(request, name) == null ? false : true;
	}

	public static void removeCookie(HttpServletResponse response, String name, String value) {
		createCookie(response, name, value, 0);
	}
}