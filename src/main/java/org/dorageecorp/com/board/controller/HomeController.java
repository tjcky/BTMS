package org.dorageecorp.com.board.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Test
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("main 진입");
		
		return "main";
	}
	
	@RequestMapping(value = "/kcmsus", method = RequestMethod.GET)
	public String kcmsus(Locale locale, Model model) {
		logger.info("프로젝트 home 진입");
		
		return "projectMain";
	}
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar(Locale locale, Model model) {
		logger.info("calendar 진입");
		
		return "calendar";
	}
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
    public String home1(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);
        
        return "home1";
    }
}