package org.dorageecorp.com.job.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.job.dao.JobDAO;
import org.dorageecorp.com.job.model.JobVersionTemplate;
import org.springframework.stereotype.Service;

@Service
public class JobBOImpl implements JobBO {
	
	@Inject
	private JobDAO jobDAO;

	@Override
	public List<JobVersionTemplate> getJobTemplateAllList(String projectId) {		
		return jobDAO.selectJobTemplateAllList(projectId);
	}

	@Override
	public List<JobVersionTemplate> getJobVersionList(String projectId, String jobMasterCode) {
		return jobDAO.selectJobVersionList(projectId, jobMasterCode);
	}
}