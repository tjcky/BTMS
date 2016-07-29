package org.dorageecorp.com.job.dao;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class JobDAOImplTest {
	
	@Inject
	private JobDAO sut;

	@Test
	public void testSelectJobTemplateAllList() {
		sut.selectJobTemplateAllList("MUSIC");
	}

}
