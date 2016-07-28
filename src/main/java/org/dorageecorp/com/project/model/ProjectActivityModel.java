package org.dorageecorp.com.project.model;

import lombok.Data;

@Data
public class ProjectActivityModel {
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
}