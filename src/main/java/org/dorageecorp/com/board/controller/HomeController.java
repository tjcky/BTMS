package org.dorageecorp.com.board.controller;

import java.util.Locale;

import lombok.extern.slf4j.Slf4j;

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
@Slf4j
public class HomeController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.info("main 진입");
		
		return "main";
	}
	
	@RequestMapping(value = "/kcmsus", method = RequestMethod.GET)
	public String kcmsus(Locale locale, Model model) {
		log.info("프로젝트 home 진입");
		
		return "projectMain";
	}
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar(Locale locale, Model model) {
		log.info("calendar 진입");
		
		return "calendar";
	}
	
	@RequestMapping(value = "/kcmsus/activityList", method = RequestMethod.GET)
    public String activityList(Locale locale, Model model) {
        log.info("전체 활동 목록 페이지 진입", locale);
        
        return "activity/activityList";
    }
}