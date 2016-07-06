package org.dorageecorp.com.activity.bo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.dorageecorp.com.activity.dao.ActivityDAO;
import org.dorageecorp.com.activity.model.ActivityModel;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

@Service
public class ActivityBOImpl implements ActivityBO {

	@Inject
	private ActivityDAO activityDAO;

	@Override
	public List<ActivityModel> getActivityList() throws Exception {
		return activityDAO.selectActivityList();
	}

	@Override
	public ActivityModel getActivityDetail(int no) {
		return activityDAO.selectActivityDetail(no);
	}

	@Override
	public String getColumnNames() {
		Map<String, Object> columnNameMap = new HashMap<String, Object>();

		List<String> columnName = activityDAO.selectColumnNames();
		columnNameMap.put("list", columnName);

		return new Gson().toJson(columnNameMap);
	}

	@Override
	public String getColumnDats() {
		Map<String, Object> columnDataMap = new HashMap<String, Object>();

		List<String> columnData = activityDAO.selectColumnData();
		columnDataMap.put("list", columnData);

		return new Gson().toJson(columnDataMap);
	}
}