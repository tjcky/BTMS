package org.dorageecorp.com.job.model;

import lombok.Data;

@Data
public class JobTemplate {
	private String projectAddressId;
	private int sequence;
	private String jobMasterCode;
	private String jobMasterUppderCode;
	private String templateGroup;
	private String masterTemplateName;
	private String versionTemplateName;
	private String jobStatus;
	private int testCaseCount;
	private String creatorId;
	private String creatorName;
	private String createDate;
	private String modifyerId;
	private String modifyerName;
	private String modifyedDate;
}