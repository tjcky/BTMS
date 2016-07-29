package org.dorageecorp.com.main.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.main.dao.MainDAO;
import org.dorageecorp.com.main.model.Project;
import org.springframework.stereotype.Service;

@Service
public class MainBOImpl implements MainBO {
	
	@Inject
	private MainDAO mainDAO;

	@Override
	public List<Project> getTotalProjects() {
		return mainDAO.selectTotalProjects();
	}

	@Override
	public List<Project> getMyProjects(String userId) {
		return mainDAO.selectMyProjects(userId);
	}
}