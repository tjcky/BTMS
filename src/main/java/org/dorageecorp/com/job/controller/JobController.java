package org.dorageecorp.com.job.controller;

import java.util.List;

import javax.inject.Inject;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.job.bo.JobBO;
import org.dorageecorp.com.job.model.JobTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class JobController {

	@Inject
	private JobBO jobBO;

	/**
	 * 전체 작업 템플릿
	 */
	@RequestMapping(value = "/{projectId}/jobTemplateAllList", method = RequestMethod.GET)
	public ModelAndView getJobTemplateAllList(@PathVariable String projectId, int page) {
		ModelAndView mav = new ModelAndView("/job/jobTemplateAllList");

		List<JobTemplate> jobTemplateList = jobBO.getJobTemplateAllList(projectId);

		mav.addObject("jobTemplateList", jobTemplateList);

		return mav;
	}

	/**
	 * 특정 버전의 전체 목록
	 */
	@RequestMapping(value = "/{projectId}/jobVersionList", method = RequestMethod.GET)
	public ModelAndView getJobVersionList(int page) {
		return null;
	}
}
