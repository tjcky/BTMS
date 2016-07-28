package org.dorageecorp.com.project.dao;

import java.util.List;

import org.dorageecorp.com.project.model.ProjectActivityModel;
import org.dorageecorp.com.project.model.ProjectInfomationModel;

public interface ProjectDAO {

	boolean isExistProject(String projectId);

	ProjectInfomationModel selectProjectInfomation(String projectId);

	List<ProjectActivityModel> selectProjectActivity(String projectId);
}