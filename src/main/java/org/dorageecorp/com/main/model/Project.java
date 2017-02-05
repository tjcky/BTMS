package org.dorageecorp.com.main.model;

import org.dorageecorp.com.util.PagingStandard;

import lombok.Data;

//@Data
public class Project {
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
	private PagingStandard pagingStandard;
	public String getPrivateKey() {
		return privateKey;
	}
	public int getSequence() {
		return sequence;
	}
	public String getAddressId() {
		return addressId;
	}
	public String getName() {
		return name;
	}
	public String getDescription() {
		return description;
	}
	public int getActivityCount() {
		return activityCount;
	}
	public String getManagerName() {
		return managerName;
	}
	public String getCategory() {
		return category;
	}
	public String getCreatorName() {
		return creatorName;
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
	public PagingStandard getPagingStandard() {
		return pagingStandard;
	}
	public void setPrivateKey(String privateKey) {
		this.privateKey = privateKey;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setActivityCount(int activityCount) {
		this.activityCount = activityCount;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
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
	public void setPagingStandard(PagingStandard pagingStandard) {
		this.pagingStandard = pagingStandard;
	}
	
	
}