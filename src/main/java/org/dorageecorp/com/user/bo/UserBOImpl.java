package org.dorageecorp.com.user.bo;

import javax.inject.Inject;

import org.dorageecorp.com.user.dao.UserDAO;
import org.dorageecorp.com.user.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserBOImpl implements UserBO {
	
	@Inject
	private UserDAO userDAO;

	@Override
	public boolean isValidUser(User user) {		
		return userDAO.isValidUser(user);
	}

	@Override
	public boolean isDuplicationID(String id) {
		return userDAO.isDuplicationID(id);
	}

	@Override
	public void registerUser(User user) {
		userDAO.insertUser(user);		
	}
}