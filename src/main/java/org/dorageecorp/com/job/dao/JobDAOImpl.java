package org.dorageecorp.com.job.dao;

import java.util.HashMap;
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

	@Override
	public List<JobVersionTemplate> selectJobVersionList(Map<String, String> projectAndJob) {
		return session.selectList(namespace + ".selectJobVersionList", projectAndJob);
	}

	@Override
	public List<JobVersionTemplate> selectJobVersionList(String projectId, String jobMasterCode) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("projectAddressId", projectId);
		map.put("jobMasterUppderCode", jobMasterCode);		
		
		return session.selectList(namespace + ".selectJobVersionList", map);
	}
}
