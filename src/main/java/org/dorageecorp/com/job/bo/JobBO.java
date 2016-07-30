package org.dorageecorp.com.job.bo;

import java.util.List;

import org.dorageecorp.com.job.model.JobVersionTemplate;

public interface JobBO {

	List<JobVersionTemplate> getJobTemplateAllList(String projectId);

}
