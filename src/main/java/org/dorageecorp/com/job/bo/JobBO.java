package org.dorageecorp.com.job.bo;

import java.util.List;
import java.util.Map;

import org.dorageecorp.com.job.model.JobVersionTemplate;

public interface JobBO {

	List<JobVersionTemplate> getJobTemplateAllList(String projectId);

	List<JobVersionTemplate> getJobVersionList(String projectId, String jobMasterCode);

	Map<String, Object> getJobTemplateDetail(JobVersionTemplate jobVersion);
}