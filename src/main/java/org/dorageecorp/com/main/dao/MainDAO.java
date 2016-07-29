package org.dorageecorp.com.main.dao;

import java.util.List;

import org.dorageecorp.com.main.model.Project;

public interface MainDAO {

	public List<Project> selectTotalProjects();
	
	public List<Project> selectMyProjects(String userId);
}