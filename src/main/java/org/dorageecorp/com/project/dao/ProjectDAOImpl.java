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
	
	private static final String namespace = "org.dorageecorp.mapper.ProjectMapper";

	@Override
	public boolean isExistProject(String projectId) {
		return session.selectOne(namespace + ".isExistProject", projectId);
	}

	@Override
	public ProjectInfomation selectProjectInfomation(String projectId) {		
		return session.selectOne(namespace + ".selectProjectInfomation", projectId);
	}

	@Override
	public List<ProjectActivity> selectProjectActivity(Project project) {
		return session.selectList(namespace + ".selectProjectActivity", project);
	}

	@Override
	public int selectProjectActivityTotalCount(String projectId) {
		return session.selectOne(namespace + ".selectProjectActivityTotalCount", projectId);
	}
}