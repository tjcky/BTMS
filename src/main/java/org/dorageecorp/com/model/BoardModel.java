package org.dorageecorp.com.model;

import java.util.Date;

import lombok.Data;

@Data
public class BoardModel {
	private Integer bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
}