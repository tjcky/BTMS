package org.dorageecorp.com.project.model;

import lombok.Data;

//@Data
public class ProjectInfomation {
	private String projectAddressId;
	private String projectName;
	private String managerName;
	private String managerNick;
	private String projectCategory;
	public String getProjectAddressId() {
		return projectAddressId;
	}
	public String getProjectName() {
		return projectName;
	}
	public String getManagerName() {
		return managerName;
	}
	public String getManagerNick() {
		return managerNick;
	}
	public String getProjectCategory() {
		return projectCategory;
	}
	public void setProjectAddressId(String projectAddressId) {
		this.projectAddressId = projectAddressId;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public void setManagerNick(String managerNick) {
		this.managerNick = managerNick;
	}
	public void setProjectCategory(String projectCategory) {
		this.projectCategory = projectCategory;
	}
	
	
}