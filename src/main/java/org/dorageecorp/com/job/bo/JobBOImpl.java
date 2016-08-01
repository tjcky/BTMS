package org.dorageecorp.com.job.bo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.dorageecorp.com.job.dao.JobDAO;
import org.dorageecorp.com.job.model.JobContent;
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
		List<JobContent> header = jobTemplate.getHeader();
		List<JobContent> content = jobTemplate.getContent();

		jobTemplate.setHeader(null);		// 아래에서 json 넘기므로 jobTemplate 객체에서 같이 넘길 필요가 없으므로 null 세팅?
		jobTemplate.setContent(null);

		Map<String, Object> map = new HashMap<String, Object>();

		String headerJson = new Gson().toJson(header);
		String contentJson = new Gson().toJson(content);

		map.put("jobTemplate", jobTemplate);
		map.put("headerJson", headerJson);
		map.put("contentJson", contentJson);

		return map;
	}
}