package org.dorageecorp.com.activity.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.activity.model.Activity;
import org.springframework.stereotype.Repository;
@Repository
public class ActivityDAOImpl implements ActivityDAO {
	
	@Inject
	private SqlSession session;

	private static final String NAMESPACE = "org.dorageecorp.mapper.ActivityMapper";
	
	@Override
	public List<Activity> selectActivityList() {
		return session.selectList(NAMESPACE + ".selectActivityList");
	}

	@Override
	public Activity selectActivityDetail(int no) {
		return session.selectOne(NAMESPACE + ".selectActivityDetail", no);
	}

	@Override
	public List<String> selectColumnNames() {
		return session.selectList(NAMESPACE + ".selectColumnNames");
	}

	@Override
	public List<String> selectColumnData() {
		return session.selectList(NAMESPACE + ".selectColumnData");
	}
}