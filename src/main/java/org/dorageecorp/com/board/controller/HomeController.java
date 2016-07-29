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

@Controller
@Slf4j
public class HomeController {
	@Inject
	private ActivityBO activityBO;
	
/*	@RequestMapping(value = "/kcmsus", method = RequestMethod.GET)
	public String kcmsus(Locale locale, Model model) {
		log.info("프로젝트 home 진입");
		
		return "projectMain";
	}*/
	
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
	
	@RequestMapping(value = "/kcmsus/activityDetail", method = RequestMethod.GET)
    public String activityDetail(Locale locale, Model model) {
        log.info("활동 상세 페이지 진입", locale);
        
        return "activity/activityDetail";
    }
	
	@RequestMapping(value = "/kcmsus/jobVersionList", method = RequestMethod.GET)
    public String jobVersionList(Locale locale, Model model) {
        log.info("Job 버전 목록 진입", locale);
        
        return "job/jobVersionList";
    }
	
	@RequestMapping(value = "/kcmsus/openJobTemplateDetail", method = RequestMethod.GET)
	public ModelAndView openJobTemplateDetail() {
		ModelAndView mav = new ModelAndView("/job/jobTemplateDetail");

/*		String columnNames = null;
		String columnData = null;

		try {
			columnNames = activityBO.getColumnNames();
			columnData = activityBO.getColumnData();
		} catch (Exception e) {
			log.error("test", e);
		}

		mav.addObject("columnNames", columnNames);
		mav.addObject("columnData", columnData);*/

		return mav;
	}
	
	@RequestMapping(value = "/kcmsus/jobExecutionDetail", method = RequestMethod.GET)
    public String jobExecution(Locale locale, Model model) {
        log.info("Job 수행 페이지 진입", locale);
        
        return "job/jobExecutionDetail";
    }
	
	@RequestMapping(value = "/kcmsus/jobExecutionResult", method = RequestMethod.GET)
    public String jobExecutionResult(Locale locale, Model model) {
        log.info("Job 수행 결과 페이지 진입", locale);
        
        return "job/jobExecutionResult";
    }
}