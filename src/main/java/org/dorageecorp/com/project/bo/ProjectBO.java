package org.dorageecorp.com.project.bo;

import java.util.List;

import org.dorageecorp.com.project.model.ProjectActivityModel;
import org.dorageecorp.com.project.model.ProjectInfomationModel;

public interface ProjectBO {

	public boolean isExistProject(String projectId);

	public ProjectInfomationModel getProjectInfomation(String projectId);

	public List<ProjectActivityModel> getProjectActivity(String projectId);
}