package org.dorageecorp.com.project.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.job.model.JobVersionTemplate;
import org.dorageecorp.com.main.model.Project;
import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.project.model.ProjectInfomation;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectDAOImpl implements ProjectDAO {
	
	@Inject
	private SqlSession session;
	
	private static final String NAMESPACE = "org.dorageecorp.mapper.ProjectMapper";

	@Override
	public boolean isExistProject(String projectId) {
		return session.selectOne(NAMESPACE + ".isExistProject", projectId);
	}

	@Override
	public ProjectInfomation selectProjectInfomation(String projectId) {		
		return session.selectOne(NAMESPACE + ".selectProjectInfomation", projectId);
	}

	@Override
	public List<ProjectActivity> selectProjectActivity(Project project) {
		return session.selectList(NAMESPACE + ".selectProjectActivity", project);
	}

	@Override
	public int selectProjectActivityTotalCount(String projectId) {
		return session.selectOne(NAMESPACE + ".selectProjectActivityTotalCount", projectId);
	}
}