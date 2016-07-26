package org.dorageecorp.com.user.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.user.model.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "org.dorageecorp.mapper.UserMapper";
	
	@Override
	public boolean isValidUser(User user) {
		return sqlSession.selectOne(namespace + ".isValidUser", user);
	}

	@Override
	public boolean isDuplicationID(String id) {
		return sqlSession.selectOne(namespace + ".isDuplicationID", id);
	}

	@Override
	public void insertUser(User user) {
		sqlSession.insert(namespace + ".insertUser", user);
	}
}