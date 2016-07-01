package org.dorageecorp.com.dao;

import org.dorageecorp.com.model.MemberModel;

public interface MemberDAO {

	public String getTime();

	public void insertMember(MemberModel memberModel);

}