package org.dorageecorp.com.main.bo;

import java.util.List;

import org.dorageecorp.com.main.model.ProjectModel;;

public interface MainBO {
	public List<ProjectModel> getTotalProjects() throws Exception;

	public List<ProjectModel> getMyProjects() throws Exception;
}