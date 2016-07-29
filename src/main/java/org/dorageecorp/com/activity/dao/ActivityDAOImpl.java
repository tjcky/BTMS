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

	private static final String namespace = "org.dorageecorp.mapper.ActivityMapper";
	
	@Override
	public List<Activity> selectActivityList() {
		return session.selectList(namespace + ".selectActivityList");
	}

	@Override
	public Activity selectActivityDetail(int no) {
		return session.selectOne(namespace + ".selectActivityDetail", no);
	}

	@Override
	public List<String> selectColumnNames() {
		return session.selectList(namespace + ".selectColumnNames");
	}

	@Override
	public List<String> selectColumnData() {
		return session.selectList(namespace + ".selectColumnData");
	}
}