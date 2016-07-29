package org.dorageecorp.com.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.main.model.Project;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAOImpl implements MainDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "org.dorageecorp.mapper.MainMapper";

	@Override
	public List<Project> selectTotalProjects() {		
		return sqlSession.selectList(namespace + ".selectTotalProjects");
	}

	@Override
	public List<Project> selectMyProjects(String userId) {
		return sqlSession.selectList(namespace + ".selectMyProjects", userId); 
	}
}