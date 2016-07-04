package org.dorageecorp.com.board.dao;

import org.dorageecorp.com.board.model.MemberModel;

public interface MemberDAO {

	public String getTime();

	public void insertMember(MemberModel memberModel);

}