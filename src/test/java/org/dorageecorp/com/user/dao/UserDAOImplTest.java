package org.dorageecorp.com.user.dao;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import javax.inject.Inject;

import org.dorageecorp.com.user.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class UserDAOImplTest {

	@Inject
	private UserDAO sut;
	
	@Test
	public void testValidUser() {
		User user = new User();
		user.setId("NT10823");
		user.setPassword("1234");

		assertTrue(sut.isValidUser(user));
	}
	
	@Test
	public void testInvalidUser() {
		User user = new User();
		user.setId("NT10823");
		user.setPassword("123");
		
		assertFalse(sut.isValidUser(user));
	}
}