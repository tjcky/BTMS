package org.dorageecorp.com.project.bo;

import java.util.List;

import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.project.model.ProjectInfomation;

public interface ProjectBO {

	public boolean isExistProject(String projectId);

	public ProjectInfomation getProjectInfomation(String projectId);

	public List<ProjectActivity> getProjectActivity(String projectId);
}