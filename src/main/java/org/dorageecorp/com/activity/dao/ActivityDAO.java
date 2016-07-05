package org.dorageecorp.com.activity.dao;

import java.util.List;

import org.dorageecorp.com.activity.model.ActivityModel;

public interface ActivityDAO {
	
	public List<ActivityModel> selectActivityList() throws Exception;
}