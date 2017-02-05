package org.dorageecorp.com.job.model;

import java.util.List;

import lombok.Data;

//@Data
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
	public String getProjectAddressId() {
		return projectAddressId;
	}
	public String getProjectName() {
		return projectName;
	}
	public int getSequence() {
		return sequence;
	}
	public String getJobMasterCode() {
		return jobMasterCode;
	}
	public String getJobMasterUppderCode() {
		return jobMasterUppderCode;
	}
	public int getTemplateGroup() {
		return templateGroup;
	}
	public String getMasterTemplateName() {
		return masterTemplateName;
	}
	public String getVersionTemplateName() {
		return versionTemplateName;
	}
	public String getJobStatus() {
		return jobStatus;
	}
	public int getTestCaseCount() {
		return testCaseCount;
	}
	public String getCreatorId() {
		return creatorId;
	}
	public String getCreatorName() {
		return creatorName;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public String getModifyerId() {
		return modifyerId;
	}
	public String getModifyerName() {
		return modifyerName;
	}
	public String getModifyedDate() {
		return modifyedDate;
	}
	public List<JobContent> getHeader() {
		return header;
	}
	public List<JobContent> getContent() {
		return content;
	}
	public List<JobVersionTemplate> getJobVersionList() {
		return jobVersionList;
	}
	public void setProjectAddressId(String projectAddressId) {
		this.projectAddressId = projectAddressId;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public void setJobMasterCode(String jobMasterCode) {
		this.jobMasterCode = jobMasterCode;
	}
	public void setJobMasterUppderCode(String jobMasterUppderCode) {
		this.jobMasterUppderCode = jobMasterUppderCode;
	}
	public void setTemplateGroup(int templateGroup) {
		this.templateGroup = templateGroup;
	}
	public void setMasterTemplateName(String masterTemplateName) {
		this.masterTemplateName = masterTemplateName;
	}
	public void setVersionTemplateName(String versionTemplateName) {
		this.versionTemplateName = versionTemplateName;
	}
	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}
	public void setTestCaseCount(int testCaseCount) {
		this.testCaseCount = testCaseCount;
	}
	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}
	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public void setModifyerId(String modifyerId) {
		this.modifyerId = modifyerId;
	}
	public void setModifyerName(String modifyerName) {
		this.modifyerName = modifyerName;
	}
	public void setModifyedDate(String modifyedDate) {
		this.modifyedDate = modifyedDate;
	}
	public void setHeader(List<JobContent> header) {
		this.header = header;
	}
	public void setContent(List<JobContent> content) {
		this.content = content;
	}
	public void setJobVersionList(List<JobVersionTemplate> jobVersionList) {
		this.jobVersionList = jobVersionList;
	}
	
	
}