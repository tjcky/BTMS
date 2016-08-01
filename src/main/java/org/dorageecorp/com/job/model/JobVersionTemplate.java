package org.dorageecorp.com.job.model;

import java.util.List;

import lombok.Data;

@Data
public class JobVersionTemplate {
	private String projectAddressId;
	private String projectName;
	private int sequence;
	private String jobMasterCode;
	private String jobMasterUppderCode;
	private int templateGroup;
	private String masterTemplateName;
	private String versionTemplateName;
	private String jobStatus;
	private int testCaseCount;
	private String creatorId;
	private String creatorName;
	private String createdDate;
	private String modifyerId;
	private String modifyerName;
	private String modifyedDate;
	private List<JobContent> header;
	private List<JobContent> content;
	private List<JobVersionTemplate> jobVersionList;
}