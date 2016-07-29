package org.dorageecorp.com.dao;

import javax.inject.Inject;

import org.dorageecorp.com.board.dao.BoardDAO;
import org.dorageecorp.com.board.model.Board;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class BoardDAOTest {

	@Inject
	private BoardDAO dao;

	@Test
	public void testCreate() throws Exception {
		Board model = new Board();
		model.setTitle("���ο� ���� �ֽ��ϴ�");
		model.setContent("���ο� ���� �ֽ��ϴ�");
		model.setWriter("user00");

		dao.create(model);
	}

	@Test
	public void testRead() throws Exception {
		System.out.println(dao.read(1));
	}

	@Test
	public void testUpdate() throws Exception {
		Board model = new Board();
		model.setBno(1);
		model.setTitle("asdfsdfsdf");
		model.setContent("asdfsdfsdf");

		dao.update(model);
	}
	
	@Test
	public void testDelete() throws Exception {
		dao.delete(1);
	}
}