package org.dorageecorp.com.project.controller;

import java.util.List;

import javax.inject.Inject;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.exception.NoneProjectException;
import org.dorageecorp.com.project.bo.ProjectBO;
import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.project.model.ProjectInfomation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class ProjectController {
	@Inject
	private ProjectBO projectBO;

	@RequestMapping(value = "/project/{projectId}", method = RequestMethod.GET)
	public ModelAndView projectHome(@PathVariable String projectId) {
		ModelAndView mav = new ModelAndView("/project/projectMain");

		if (projectBO.isExistProject(projectId) == false) {
			throw new NoneProjectException(projectId);
		}

		ProjectInfomation projectInfomation = projectBO.getProjectInfomation(projectId);
		List<ProjectActivity> projectActivityList = projectBO.getProjectActivity(projectId);

		mav.addObject("projectInfomation", projectInfomation);
		mav.addObject("projectActivityList", projectActivityList);

		return mav;
	}
}
