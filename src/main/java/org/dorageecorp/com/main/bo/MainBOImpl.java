package org.dorageecorp.com.main.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.main.dao.MainDAO;
import org.dorageecorp.com.main.model.ProjectModel;
import org.springframework.stereotype.Service;

@Service
public class MainBOImpl implements MainBO {
	
	@Inject
	private MainDAO mainDAO;

	@Override
	public List<ProjectModel> getTotalProjects() throws Exception {		
		return mainDAO.selectTotalProjects();
	}

	@Override
	public List<ProjectModel> getMyProjects() throws Exception {
		return mainDAO.selectMyProjects();
	}
}