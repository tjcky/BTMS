package org.dorageecorp.com.activity.dao;

import java.util.List;

import org.dorageecorp.com.activity.model.Activity;

public interface ActivityDAO {
	
	public List<Activity> selectActivityList();

	public Activity selectActivityDetail(int no);

	public List<String> selectColumnNames();

	public List<String> selectColumnData();
}