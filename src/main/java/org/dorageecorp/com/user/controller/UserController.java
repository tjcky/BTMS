package org.dorageecorp.com.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import lombok.extern.slf4j.Slf4j;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.dorageecorp.com.user.bo.UserBO;
import org.dorageecorp.com.user.model.User;
import org.dorageecorp.com.util.CookieUtil;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String trylogin(HttpServletResponse response, @Valid User user, BindingResult result) {
		user.setId(StringUtils.upperCase(user.getId()));
		
        if (result.hasErrors()) {
            return "user/login";
        }

        if (userBO.isValidUser(user) == false) {
        	return "user/login";
        }

        CookieUtil.setCookie(response, "LOGIN_KEY", String.valueOf(user.getId()), CookieUtil.COOKIE_DEFAULT_MAX_AGE, CookieUtil.COOKIE_DEFAULT_DOMAIN);

        return "redirect:/main";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "user/register";
	}

	@RequestMapping(value = "/doregister", method = RequestMethod.POST)
	public String doregister(@Valid User user, BindingResult result) {		
        if (result.hasErrors() || userBO.isDuplicationID(user.getId())) {
            return "user/login";
        }        
        
        try {
        	userBO.registerUser(user);
        } catch (Exception e){
        	log.error(ToStringBuilder.reflectionToString(user, ToStringStyle.MULTI_LINE_STYLE));
        }        
		
		return "user/login";
	}
}