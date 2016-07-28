package org.dorageecorp.com.main.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

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

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("main");
		
		String userId = CookieUtil.getCookieValue(request, "userId");

		try {
			List<ProjectModel> totalProject = mainBO.getTotalProjects();
			List<ProjectModel> myProject = mainBO.getMyProjects(userId);

			mav.addObject("totalProject", totalProject);
			mav.addObject("myProject", myProject);
		} catch (Exception e) {
			log.error("Main Error", e);
		}

		return mav;
	}
}