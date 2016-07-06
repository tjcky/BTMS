package org.dorageecorp.com.activity.bo;

import java.util.List;

import org.dorageecorp.com.activity.model.ActivityModel;

public interface ActivityBO {
	
	public List<ActivityModel> getActivityList() throws Exception;

	public ActivityModel getActivityDetail(int no);

	public String getColumnNames();

	public String getColumnDats();
}