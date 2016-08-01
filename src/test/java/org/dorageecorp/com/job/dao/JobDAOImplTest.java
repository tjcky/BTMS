package org.dorageecorp.com.job.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import lombok.extern.slf4j.Slf4j;

import org.dorageecorp.com.job.model.JobVersionTemplate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
@Slf4j
public class JobDAOImplTest {
	
	@Inject
	private JobDAO sut;

	@Test
	public void testSelectJobTemplateAllList() {
		List<JobVersionTemplate> list = sut.selectJobTemplateAllList("MUSIC");
		
		list.forEach(a -> a.getJobVersionList().forEach(b -> System.out.println(b)));
	}
	
	@Test
	public void testSelectJobTemplateVersionList() {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("projectAddressId", "MUSIC");
		map.put("jobMasterUppderCode", "MUSIC_MSTJOB_201609");
		
		List<JobVersionTemplate> list = sut.selectJobTemplateVersionList(map);
		
		list.forEach(a -> System.out.println(a));
	}
	
	@Test
	public void testSelectJobVersionList() {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("projectAddressId", "MUSIC");
		map.put("jobMasterUppderCode", "MUSIC_MSTJOB_201609");
		
		List<JobVersionTemplate> list = sut.selectJobVersionList(map);
		
		list.forEach(a -> System.out.println(a));
	}
	
	@Test
	public void testSelectJobDetail() {
		JobVersionTemplate jobVersionTemplate = new JobVersionTemplate();
		
		jobVersionTemplate.setProjectAddressId("MUSIC");
		jobVersionTemplate.setJobMasterCode("MUSIC_DTLJOB_201602");
		jobVersionTemplate.setJobMasterUppderCode("MUSIC_MSTJOB_201601");
		
		JobVersionTemplate result = sut.selectJobDetail(jobVersionTemplate);
		
		System.out.println(result);
	}
}