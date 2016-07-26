package org.dorageecorp.com.main.dao;

import java.util.List;

import org.dorageecorp.com.main.model.ProjectModel;

public interface MainDAO {

	public List<ProjectModel> selectTotalProjects() throws Exception;
	
	public List<ProjectModel> selectMyProjects() throws Exception;
}