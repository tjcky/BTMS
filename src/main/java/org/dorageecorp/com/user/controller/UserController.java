package org.dorageecorp.com.user.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.dorageecorp.com.user.bo.UserBO;
import org.dorageecorp.com.user.model.User;
import org.dorageecorp.com.util.CookieUtil;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
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
            List<ObjectError> list = result.getAllErrors();

            for (ObjectError e : list) {
                log.error(" ObjectError : " + e);
            }

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
}