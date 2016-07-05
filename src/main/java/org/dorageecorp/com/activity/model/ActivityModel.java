package org.dorageecorp.com.activity.model;

import lombok.Data;

@Data
public class ActivityModel {
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
}