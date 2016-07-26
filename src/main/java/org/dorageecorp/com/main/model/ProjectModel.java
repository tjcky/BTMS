package org.dorageecorp.com.main.model;

import lombok.Data;

@Data
public class ProjectModel {
	private String privateKey;
	private int sequence;
	private String addressId;
	private String name;
	private String description;
	private int activityCount;
	private String managerName;
	private String category;
	private String creatorName;
	private String createDate;
	private String modifierName;
	private String modifyDate;
	private String myRole;
}