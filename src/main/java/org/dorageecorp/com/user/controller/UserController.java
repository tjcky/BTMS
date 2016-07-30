package org.dorageecorp.com.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import lombok.extern.slf4j.Slf4j;

import org.apache.commons.lang3.StringUtils;
import org.dorageecorp.com.user.bo.UserBO;
import org.dorageecorp.com.user.model.User;
import org.dorageecorp.com.util.CookieUtil;
import org.dorageecorp.com.util.ServiceConstant;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Slf4j
public class UserController {

	@Inject
	private UserBO userBO;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "user/login";
	}

	@RequestMapping(value = "/trylogin", method = RequestMethod.POST)
	public @ResponseBody String trylogin(HttpServletResponse response, @Valid User user, BindingResult result) {
		user.setUserId(StringUtils.upperCase(user.getUserId()));

		if (result.hasErrors()) {
			return ServiceConstant.FAIL;
		}

		if (userBO.isValidUser(user) == false) {
			return ServiceConstant.FAIL;
		}

		CookieUtil.createCookie(response, "userId", user.getUserId(), ServiceConstant.ONE_DAY);

		return ServiceConstant.SUCCESS;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "user/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public @ResponseBody String doregister(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return ServiceConstant.FAIL;
		}

		if (userBO.isDuplicationID(user.getUserId())) {
			return ServiceConstant.DUPLICATION_ID;
		}

		String message = null;

		try {
			userBO.registerUser(user);
			message = ServiceConstant.SUCCESS;
		} catch (Exception e) {
			log.error(String.valueOf(user), e);
			message = ServiceConstant.FAIL;
		}

		return message;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletResponse response, String userId) {
		CookieUtil.removeCookie(response, "userId", userId);
		return "user/login";
	}
}