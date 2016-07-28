package org.dorageecorp.com.util;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.exception.NoneProjectException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
@Slf4j
public class CommonException {

	@ExceptionHandler(NoneProjectException.class)
	public ModelAndView projectNotFoundException(NoneProjectException e) {
		ModelAndView mav = new ModelAndView("error/projectNotFound");
		String projectId = e.getMessage();

		log.warn(projectId + " is none");
		mav.addObject("projectId", projectId);

		return mav;
	}
}
