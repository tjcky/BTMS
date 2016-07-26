package org.dorageecorp.com.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.main.model.ProjectModel;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAOImpl implements MainDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "org.dorageecorp.mapper.MainMapper";

	@Override
	public List<ProjectModel> selectTotalProjects() throws Exception {		
		return sqlSession.selectList(namespace + ".selectTotalProjects");
	}

	@Override
	public List<ProjectModel> selectMyProjects() throws Exception {
		return sqlSession.selectList(namespace + ".selectMyProjects"); 
	}
}