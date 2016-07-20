package org.dorageecorp.com.board.controller;

import java.util.Locale;

import javax.inject.Inject;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.activity.bo.ActivityBO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Test
 */
@Controller
@Slf4j
public class HomeController {
	@Inject
	private ActivityBO activityBO;
	
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
	
	@RequestMapping(value = "/kcmsus/jobVersionList", method = RequestMethod.GET)
    public String jobVersionList(Locale locale, Model model) {
        log.info("Job 버전 목록 진입", locale);
        
        return "jobTemplate/jobVersionList";
    }
	
	@RequestMapping(value = "/kcmsus/jobDetail", method = RequestMethod.GET)
	public ModelAndView openJobDetail() {
		ModelAndView mav = new ModelAndView("/jobTemplate/jobDetail");

		String columnNames = null;
		String columnData = null;

		try {
			columnNames = activityBO.getColumnNames();
			columnData = activityBO.getColumnData();
		} catch (Exception e) {
			log.error("test", e);
		}

		mav.addObject("columnNames", columnNames);
		mav.addObject("columnData", columnData);

		return mav;
	}
}