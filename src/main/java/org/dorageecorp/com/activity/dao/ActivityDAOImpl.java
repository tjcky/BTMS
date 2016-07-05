package org.dorageecorp.com.activity.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.activity.model.ActivityModel;
import org.springframework.stereotype.Repository;
@Repository
public class ActivityDAOImpl implements ActivityDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "org.dorageecorp.mapper.ActivityMapper";
	
	@Override
	public List<ActivityModel> selectActivityList() throws Exception {
		return session.selectList(namespace + ".selectActivityList");
	}

	@Override
	public ActivityModel selectActivityDetail(int no) {
		return session.selectOne(namespace + ".selectActivityDetail", no);
	}
}