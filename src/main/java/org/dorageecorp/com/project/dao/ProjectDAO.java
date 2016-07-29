package org.dorageecorp.com.project.dao;

import java.util.List;

import org.dorageecorp.com.main.model.Project;
import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.project.model.ProjectInfomation;

public interface ProjectDAO {

	boolean isExistProject(String projectId);

	ProjectInfomation selectProjectInfomation(String projectId);

	List<ProjectActivity> selectProjectActivity(Project project);

	int selectProjectActivityTotalCount(String projectId);
}