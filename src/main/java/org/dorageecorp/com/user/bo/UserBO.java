package org.dorageecorp.com.user.bo;

import org.dorageecorp.com.user.model.User;

public interface UserBO {
	public boolean isValidUser(User user);
	
	public boolean isDuplicationID(String id);

	public void registerUser(User user);
}