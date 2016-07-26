package org.dorageecorp.com.user.model;

import lombok.Data;

@Data
public class User {
	private String id;
	private String name;
	private String password;
	private String creatorId;
	private String createDate;
	private String modifierName;
	private String modifyDate;
	private String myRole;
}