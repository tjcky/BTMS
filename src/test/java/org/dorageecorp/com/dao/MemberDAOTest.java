package org.dorageecorp.com.dao;

import javax.inject.Inject;

import org.dorageecorp.com.board.dao.MemberDAO;
import org.dorageecorp.com.board.model.MemberModel;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MemberDAOTest {

	@Inject
	private MemberDAO dao;
	
	@Test
	public void testTime() throws Exception {
		System.out.println(dao.getTime());
	}
	
	@Test
	public void testInsertMember() throws Exception {
		MemberModel model = new MemberModel();
		
		model.setUserid("user00");
		model.setUserpw("user00");
		model.setUsername("USER00");
		model.setEmail("user00@aaa.com");
		
		dao.insertMember(model);
	}
}