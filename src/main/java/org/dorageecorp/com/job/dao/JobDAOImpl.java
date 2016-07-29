package org.dorageecorp.com.job.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.job.model.JobTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class JobDAOImpl implements JobDAO {
	
	@Inject
	private SqlSession session;
	
	private static final String namespace = "org.dorageecorp.mapper.jobMapper";

	@Override
	public List<JobTemplate> selectJobTemplateAllList(String projectId) {		
		return session.selectList(namespace + ".selectJobTemplateAllList", projectId);
	}

}
