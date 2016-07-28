package org.dorageecorp.com.user.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class User {
	@Pattern(regexp = "^[a-zA-Z0-9]+$")
	private String userId;
	private String userName;
	private String nickName;
	@Size(min = 5, max = 50)
	@Pattern(regexp = "^[a-zA-Z0-9]+$")
	private String password;
	private String creatorId;
	private String createDate;
	private String modifierName;
	private String modifyDate;
	private String myRole;
}