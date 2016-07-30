package org.dorageecorp.com.job.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.job.model.JobVersionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class JobDAOImpl implements JobDAO {
	
	@Inject
	private SqlSession session;
	
	private static final String namespace = "org.dorageecorp.mapper.jobMapper";

	@Override
	public List<JobVersionTemplate> selectJobTemplateAllList(String projectId) {		
		return session.selectList(namespace + ".selectJobTemplateAllList", projectId);
	}

	@Override
	public List<JobVersionTemplate> selectJobTemplateVersionList(Map<String, String> projectAndJob) {
		return session.selectList(namespace + ".selectJobTemplateVersionList", projectAndJob);
	}
}
