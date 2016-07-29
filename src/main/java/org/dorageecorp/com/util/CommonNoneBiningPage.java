package org.dorageecorp.com.util;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@Slf4j
public class CommonNoneBiningPage {

	@RequestMapping(value = "/noneProject", method = RequestMethod.GET)
	public ModelAndView projectNotFoundException() {
		ModelAndView mav = new ModelAndView("error/projectNotFound");

		return mav;
	}
}