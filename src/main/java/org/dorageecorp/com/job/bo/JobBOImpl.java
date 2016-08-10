package org.dorageecorp.com.job.bo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.dorageecorp.com.job.dao.JobDAO;
import org.dorageecorp.com.job.model.JobVersionTemplate;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

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

	@Override
	public Map<String, Object> getJobTemplateDetail(JobVersionTemplate jobVersion) {
		JobVersionTemplate jobTemplate = jobDAO.selectJobDetail(jobVersion);
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("jobTemplate", jobTemplate);
		map.put("headerJson", new Gson().toJson(jobTemplate.getHeader()));
		map.put("contentJson", new Gson().toJson(jobTemplate.getContent()));

		return map;
	}
}