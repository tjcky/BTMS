package org.dorageecorp.com.activity.model;

import lombok.Data;

//@Data
public class Activity {
	private String activityPk;
	private int activityNo;
	private String activityTitle;
	private String activityContent;
	private String activityStatus;
	private String creatorId;
	private String creatorName;
	private String createDate;
	private String modifierId;
	private String modifiedDate;
	public String getActivityPk() {
		return activityPk;
	}
	public int getActivityNo() {
		return activityNo;
	}
	public String getActivityTitle() {
		return activityTitle;
	}
	public String getActivityContent() {
		return activityContent;
	}
	public String getActivityStatus() {
		return activityStatus;
	}
	public String getCreatorId() {
		return creatorId;
	}
	public String getCreatorName() {
		return creatorName;
	}
	public String getCreateDate() {
		return createDate;
	}
	public String getModifierId() {
		return modifierId;
	}
	public String getModifiedDate() {
		return modifiedDate;
	}
	public void setActivityPk(String activityPk) {
		this.activityPk = activityPk;
	}
	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}
	public void setActivityTitle(String activityTitle) {
		this.activityTitle = activityTitle;
	}
	public void setActivityContent(String activityContent) {
		this.activityContent = activityContent;
	}
	public void setActivityStatus(String activityStatus) {
		this.activityStatus = activityStatus;
	}
	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}
	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public void setModifierId(String modifierId) {
		this.modifierId = modifierId;
	}
	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	
}