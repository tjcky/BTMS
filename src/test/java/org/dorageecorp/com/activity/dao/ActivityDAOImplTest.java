package org.dorageecorp.com.activity.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.activity.model.ActivityModel;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.CollectionUtils;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class ActivityDAOImplTest {

	@Inject
	private ActivityDAO activityDAO;
	
	@Test
	public void test() throws Exception {
		List<ActivityModel> list = activityDAO.selectActivityList();
		
		assertFalse(CollectionUtils.isEmpty(list));
	}
}