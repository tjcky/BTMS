package org.dorageecorp.com.user.dao;

import org.dorageecorp.com.user.model.User;

public interface UserDAO {
	public boolean isValidUser(User user);
	
	public boolean isDuplicationID(String id);

	public void insertUser(User user);
}