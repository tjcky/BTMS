package org.dorageecorp.com.job.dao;

import java.util.List;

import org.dorageecorp.com.job.model.JobTemplate;

public interface JobDAO {

	List<JobTemplate> selectJobTemplateAllList(String projectId);

}
