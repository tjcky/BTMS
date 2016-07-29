package org.dorageecorp.com.main.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.main.model.Project;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class MainDAOImplTest {
	
	@Inject
	private MainDAO sut;

	@Test
	public void testSelectTotalProjects() throws Exception {
		List<Project> list = sut.selectTotalProjects();
		
		assertNotNull(list);
	}	

}