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

	private static final String NAMESPACE = "org.dorageecorp.mapper.jobMapper";

	@Override
	public List<JobVersionTemplate> selectJobTemplateAllList(String projectId) {
		return session.selectList(NAMESPACE + ".selectJobTemplateAllList", projectId);
	}

	@Override
	public List<JobVersionTemplate> selectJobTemplateVersionList(Map<String, String> projectAndJob) {
		return session.selectList(NAMESPACE + ".selectJobTemplateVersionList", projectAndJob);
	}

	@Override
	public List<JobVersionTemplate> selectJobVersionList(Map<String, String> projectAndJob) {
		return session.selectList(NAMESPACE + ".selectJobVersionList", projectAndJob);
	}

	@Override
	public List<JobVersionTemplate> selectJobVersionList(String projectId, String jobMasterCode) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("projectAddressId", projectId);
		map.put("jobMasterUppderCode", jobMasterCode);

		return session.selectList(NAMESPACE + ".selectJobVersionList", map);
	}

	@Override
	public JobVersionTemplate selectJobDetail(JobVersionTemplate jobVersion) {
		return session.selectOne(NAMESPACE + ".selectJobDetail", jobVersion);
	}
}
