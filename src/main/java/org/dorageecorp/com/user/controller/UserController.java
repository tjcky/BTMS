package org.dorageecorp.com.user.controller;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Slf4j
public class UserController {

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		log.info("login page 진입");
		
		return "user/login";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		log.info("register page 진입");
		
		return "user/register";
	}
}