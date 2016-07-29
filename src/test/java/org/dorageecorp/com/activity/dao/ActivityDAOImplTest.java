package org.dorageecorp.com.activity.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.activity.model.Activity;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.CollectionUtils;
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class ActivityDAOImplTest {

	@Inject
	private ActivityDAO activityDAO;
	
	@Test
	public void testSelectActivityList() throws Exception {
		List<Activity> list = activityDAO.selectActivityList();
		
		assertFalse(CollectionUtils.isEmpty(list));
	}
	
	@Test
	public void testSelectActivityDetail() throws Exception {
		Activity model = activityDAO.selectActivityDetail(3);
		
		assertNotNull(model);
	}
	
	@Test
	public void testSelectColumnNames() throws Exception {
		List<String> list = activityDAO.selectColumnNames();
		
		assertFalse(CollectionUtils.isEmpty(list));
	}
	
	@Test
	public void testSelectColumnData() throws Exception {
		List<String> list = activityDAO.selectColumnData();
		
		assertFalse(CollectionUtils.isEmpty(list));
	}
}