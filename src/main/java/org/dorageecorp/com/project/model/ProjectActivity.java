package org.dorageecorp.com.project.model;

import lombok.Data;

//@Data
public class ProjectActivity {
	private int sequence;					// 시퀀스
	private String title;					// 제목
	private String status;					// 상태
	private String allotmentedQa;			// 담당 QA
	private String importanctDegree;		// 중요도
	private String deployType;				// 배포 구분
	private String platform;				// 플랫폼
	private String description;				// 설명
	private String representEnviromentName;	// 대표 환경명
	private int enviromentCount;			// 테스트 환경 수
	private String startDate;				// 테스트 시작일
	private String endDate;					// 테스트 종료일
	private String completeExpectionDate;	// 완료 예정일
	private String creatorName;				// 생성자
	private String createDate;				// 생성일
	private String modifyerName;			// 수정자
	private String modifyDate;				// 수정일
	public int getSequence() {
		return sequence;
	}
	public String getTitle() {
		return title;
	}
	public String getStatus() {
		return status;
	}
	public String getAllotmentedQa() {
		return allotmentedQa;
	}
	public String getImportanctDegree() {
		return importanctDegree;
	}
	public String getDeployType() {
		return deployType;
	}
	public String getPlatform() {
		return platform;
	}
	public String getDescription() {
		return description;
	}
	public String getRepresentEnviromentName() {
		return representEnviromentName;
	}
	public int getEnviromentCount() {
		return enviromentCount;
	}
	public String getStartDate() {
		return startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public String getCompleteExpectionDate() {
		return completeExpectionDate;
	}
	public String getCreatorName() {
		return creatorName;
	}
	public String getCreateDate() {
		return createDate;
	}
	public String getModifyerName() {
		return modifyerName;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setAllotmentedQa(String allotmentedQa) {
		this.allotmentedQa = allotmentedQa;
	}
	public void setImportanctDegree(String importanctDegree) {
		this.importanctDegree = importanctDegree;
	}
	public void setDeployType(String deployType) {
		this.deployType = deployType;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setRepresentEnviromentName(String representEnviromentName) {
		this.representEnviromentName = representEnviromentName;
	}
	public void setEnviromentCount(int enviromentCount) {
		this.enviromentCount = enviromentCount;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public void setCompleteExpectionDate(String completeExpectionDate) {
		this.completeExpectionDate = completeExpectionDate;
	}
	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public void setModifyerName(String modifyerName) {
		this.modifyerName = modifyerName;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	
	
}