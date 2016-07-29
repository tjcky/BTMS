package org.dorageecorp.com.job.bo;

import java.util.List;

import org.dorageecorp.com.job.model.JobTemplate;

public interface JobBO {

	List<JobTemplate> getJobTemplateAllList(String projectId);

}
