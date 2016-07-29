package org.dorageecorp.com.user.dao;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.dorageecorp.com.user.model.User;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class UserDAOImplTest {

	@Inject
	private UserDAO sut;

	@Ignore
	@Test
	public void testValidUser() {
		User user = new User();
		user.setUserId("NT10823");
		user.setPassword("1234");

		assertTrue(sut.isValidUser(user));
	}
	
	@Test
	public void testInvalidUser() {
		User user = new User();
		user.setUserId("NT10823");
		user.setPassword("123");
		
		assertFalse(sut.isValidUser(user));
	}
	
	@Test
	public void testIsDuplicationID() {		
		assertTrue(sut.isDuplicationID("NT10823"));
	}
	
	@Test
	public void testIsNotDuplicationID() {		
		assertFalse(sut.isDuplicationID("nt10823123123"));
	}
	
	@Test
	public void test(){
		List<String> test = new ArrayList<String>();
		
		test.add("12342342342");
		test.add("3456234");
		test.add("1434");
		
		Optional<String> d = test.stream().filter(w -> w.length()>10).findFirst();
		System.out.println(d.orElse(null));
		
	}
}