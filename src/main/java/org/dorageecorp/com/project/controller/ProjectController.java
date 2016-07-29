package org.dorageecorp.com.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.exception.NoneProjectException;
import org.dorageecorp.com.main.model.Project;
import org.dorageecorp.com.project.bo.ProjectBO;
import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.project.model.ProjectInfomation;
import org.dorageecorp.com.util.PageMaker;
import org.dorageecorp.com.util.PagingStandard;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class ProjectController {
	@Inject
	private ProjectBO projectBO;

	@RequestMapping(value = "/project/{projectId}", method = RequestMethod.GET)
	public ModelAndView projectHome(@PathVariable String projectId, @ModelAttribute PagingStandard pagingStandard) {
		ModelAndView mav = new ModelAndView("/project/projectMain");

		if (projectBO.isExistProject(projectId) == false) {
			throw new NoneProjectException(projectId);
		}

		PageMaker pageMaker = new PageMaker();
		pageMaker.setPagingStandard(pagingStandard);
		pageMaker.setTotalCount(projectBO.getProjectActivityTotalCount(projectId));

		Project project = new Project();
		project.setAddressId(projectId);
		project.setPagingStandard(pagingStandard);

		ProjectInfomation projectInfomation = projectBO.getProjectInfomation(projectId);
		List<ProjectActivity> projectActivityList = projectBO.getProjectActivity(project);

		mav.addObject("projectInfomation", projectInfomation);
		mav.addObject("projectActivityList", projectActivityList);
		mav.addObject("pageMaker", pageMaker);

		return mav;
	}
	
	@RequestMapping(value = "/project/activityList", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> getProjectActivityByPage(String projectId, int page) {

		PagingStandard pagingStandard = new PagingStandard();
		pagingStandard.setPage(page);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPagingStandard(pagingStandard);
		pageMaker.setTotalCount(projectBO.getProjectActivityTotalCount(projectId));

		Project project = new Project();
		project.setAddressId(projectId);
		project.setPagingStandard(pagingStandard);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("activityList", projectBO.getProjectActivity(project));
		map.put("pageMaker", pageMaker);
		
		return map;
	}
}
