package org.dorageecorp.com.activity.bo;

import java.util.List;

import org.dorageecorp.com.activity.model.ActivityModel;

public interface ActivityBO {
	
	public List<ActivityModel> activityList() throws Exception;
}