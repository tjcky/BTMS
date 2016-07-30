package org.dorageecorp.com.job.dao;

import java.util.List;
import java.util.Map;

import org.dorageecorp.com.job.model.JobVersionTemplate;

public interface JobDAO {

	List<JobVersionTemplate> selectJobTemplateAllList(String projectId);

	List<JobVersionTemplate> selectJobTemplateVersionList(Map<String, String> projectAndJob);
}
