package org.dorageecorp.com.project.dao;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.main.model.Project;
import org.dorageecorp.com.project.model.ProjectActivity;
import org.dorageecorp.com.util.PagingStandard;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class ProjectDAOImplTest {
	
	@Inject
	private ProjectDAO sut;

	@Test
	public void testSelectProjectActivityTotalCount() {
		int count = sut.selectProjectActivityTotalCount("MUSIC");
		
		System.out.println("count : " + count);
	}
	
	@Test
	public void testSelectProjectActivity(){
		Project project = new Project();
		project.setAddressId("MUSIC");

		PagingStandard pagingStandard = new PagingStandard();
		pagingStandard.setPage(2);
		pagingStandard.setPerPageNumber(3);

		project.setPagingStandard(pagingStandard);

		List<ProjectActivity> list = sut.selectProjectActivity(project);

		list.forEach(a -> System.out.println(a.getSequence() + ", " + a.getAllotmentedQa()));
	}
}
