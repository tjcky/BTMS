package org.dorageecorp.com.activity.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.activity.dao.ActivityDAO;
import org.dorageecorp.com.activity.model.ActivityModel;
import org.springframework.stereotype.Service;

@Service
public class ActivityBOImpl implements ActivityBO {

	@Inject
	private ActivityDAO activityDAO;

	@Override
	public List<ActivityModel> activityList() throws Exception {
		return activityDAO.selectActivityList();
	}
}