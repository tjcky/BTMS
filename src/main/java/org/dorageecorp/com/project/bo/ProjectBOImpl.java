package org.dorageecorp.com.project.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.project.dao.ProjectDAO;
import org.dorageecorp.com.project.model.ProjectActivityModel;
import org.dorageecorp.com.project.model.ProjectInfomationModel;
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
	public ProjectInfomationModel getProjectInfomation(String projectId) {		
		return projectDAO.selectProjectInfomation(projectId);
	}

	@Override
	public List<ProjectActivityModel> getProjectActivity(String projectId) {
		return projectDAO.selectProjectActivity(projectId);
	}
}