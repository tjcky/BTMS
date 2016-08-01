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

	private static final String NAMESPACE = "org.dorageecorp.mapper.MainMapper";

	@Override
	public List<Project> selectTotalProjects() {		
		return sqlSession.selectList(NAMESPACE + ".selectTotalProjects");
	}

	@Override
	public List<Project> selectMyProjects(String userId) {
		return sqlSession.selectList(NAMESPACE + ".selectMyProjects", userId); 
	}
}