package org.dorageecorp.com.main.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.main.bo.MainBO;
import org.dorageecorp.com.main.model.ProjectModel;
import org.dorageecorp.com.util.CookieUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Test
 */
@Controller
@Slf4j
public class MainController {

	@Inject
	private MainBO mainBO;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		
		
		return null;
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("main");

		try {
			List<ProjectModel> totalProject = mainBO.getTotalProjects();
			List<ProjectModel> myProject = mainBO.getMyProjects();
			
			mav.addObject("totalProject", totalProject);
			mav.addObject("myProject", myProject);
		} catch (Exception e) {
			log.error("Main Error", e);			
		}

		return mav;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletResponse response, String userId){
		CookieUtil.removeCookie(response, userId);
		return "user/login";
	}
}