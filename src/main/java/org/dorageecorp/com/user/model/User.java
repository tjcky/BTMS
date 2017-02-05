package org.dorageecorp.com.user.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;

//@Data
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
	public String getUserId() {
		return userId;
	}
	public String getUserName() {
		return userName;
	}
	public String getNickName() {
		return nickName;
	}
	public String getPassword() {
		return password;
	}
	public String getCreatorId() {
		return creatorId;
	}
	public String getCreateDate() {
		return createDate;
	}
	public String getModifierName() {
		return modifierName;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public String getMyRole() {
		return myRole;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public void setModifierName(String modifierName) {
		this.modifierName = modifierName;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public void setMyRole(String myRole) {
		this.myRole = myRole;
	}
	
	
}