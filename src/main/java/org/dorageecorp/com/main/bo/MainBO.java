package org.dorageecorp.com.main.bo;

import java.util.List;

import org.dorageecorp.com.main.model.Project;;

public interface MainBO {
	public List<Project> getTotalProjects();

	public List<Project> getMyProjects(String userId);
}