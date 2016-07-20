package org.dorageecorp.com.board.controller;

import java.util.Locale;

import lombok.extern.slf4j.Slf4j;

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
	
	@RequestMapping(value = "/kcmsus/activitySchedule", method = RequestMethod.GET)
	public String activitySchedule(Locale locale, Model model) {
		log.info("활동 스케쥴 진입");
		
		return "schedule/activitySchedule";
	}
	
	@RequestMapping(value = "/kcmsus/calendar", method = RequestMethod.GET)
	public String calendar(Locale locale, Model model) {
		log.info("test 달력 진입");
		
		return "schedule/calendar";
	}
	
	@RequestMapping(value = "/kcmsus/activityList", method = RequestMethod.GET)
    public String activityList(Locale locale, Model model) {
        log.info("전체 활동 목록 페이지 진입", locale);
        
        return "activity/activityList";
    }
	
	@RequestMapping(value = "/kcmsus/jobTemplateList", method = RequestMethod.GET)
    public String jobTemplateList(Locale locale, Model model) {
        log.info("Job 템플릿 목록 진입", locale);
        
        return "jobTemplate/jobTemplateList";
    }
}