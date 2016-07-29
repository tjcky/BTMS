package org.dorageecorp.com.project.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.main.model.Project;
import org.dorageecorp.com.project.dao.ProjectDAO;
import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.project.model.ProjectInfomation;
import org.springframework.stereotype.Service;

@Service
public class ProjectBOImpl implements ProjectBO {
	
	@Inject
	private ProjectDAO projectDAO;

	@Override
	public boolean isExistProject(String projectId) {		
		return projectDAO.isExistProject(projectId);
	}

	@Override
	public ProjectInfomation getProjectInfomation(String projectId) {		
		return projectDAO.selectProjectInfomation(projectId);
	}

	@Override
	public List<ProjectActivity> getProjectActivity(Project project) {
		return projectDAO.selectProjectActivity(project);
	}

	@Override
	public int getProjectActivityTotalCount(String projectId) {		
		return projectDAO.selectProjectActivityTotalCount(projectId);
	}
}