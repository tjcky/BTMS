package org.dorageecorp.com.job.model;

import lombok.Data;

//@Data
public class JobContent {
	private int rowNumber;
	private String content;
	public int getRowNumber() {
		return rowNumber;
	}
	public String getContent() {
		return content;
	}
	public void setRowNumber(int rowNumber) {
		this.rowNumber = rowNumber;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}