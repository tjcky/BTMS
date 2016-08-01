package org.dorageecorp.com.project.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;

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
	public ModelAndView projectHome(HttpServletResponse response, @PathVariable String projectId, @ModelAttribute PagingStandard pagingStandard) throws IOException {
		ModelAndView mav = new ModelAndView("/project/projectMain");

		if (projectBO.isExistProject(projectId) == false) {
			response.sendRedirect("/noneProject");
			// TODO : Redirect 를 하더라도 아래 로직을 계속 타게 된다.
			// NULL 로 리턴해서 끝내는건 안좋은거 같고 noneProject jsp를 호출하자니 sitemesh 적용때문에 곤란(에러 페이지가 템플릿 페이지 내에 나옴)
			// 해결 방식 고민 필요
			// 요 부분 로직을 구현하는 이유는 프로젝트가 삭제되었거나, 변경되었거나, 권한이 없는 프로젝트에 접근하는 경우를 처리할 때이다.
		}

		PageMaker pageMaker = new PageMaker();
		pageMaker.setPagingStandard(pagingStandard);
		pageMaker.setTotalCount(projectBO.getProjectActivityTotalCount(projectId));

		Project project = new Project();
		project.setAddressId(projectId);
		project.setPagingStandard(pagingStandard);

		ProjectInfomation projectInfomation = projectBO.getProjectInfomation(projectId);
		List<ProjectActivity> projectActivityList = projectBO.getProjectActivity(project);
		
		//CookieUtil.createCookie(response, "projectId", projectInfomation.getProjectAddressId(), -1);
		// TODO : 쿠키 구울때 한글 인코딩 문제 발생(UTF-8 세팅 필요), 프로젝트 ID가 한박자씩 늦게 세팅되는 이슈가 있음 
		/*CookieUtil.createCookie(response, "projectName", projectInfomation.getProjectName(), -1);*/

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