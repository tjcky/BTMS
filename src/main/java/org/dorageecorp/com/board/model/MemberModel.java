package org.dorageecorp.com.board.model;

import java.util.Date;

import lombok.Data;

@Data
public class MemberModel {
	private String userid;
	private String userpw;
	private String username;
	private String email;
	private Date regdate;
	private Date updatedate;
}