package org.dorageecorp.com.dao;

import javax.inject.Inject;

import org.dorageecorp.com.board.dao.BoardDAO;
import org.dorageecorp.com.board.model.BoardModel;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class BoardDAOTest {

	@Inject
	private BoardDAO dao;

	@Test
	public void testCreate() throws Exception {
		BoardModel model = new BoardModel();
		model.setTitle("새로운 글을 넣습니다");
		model.setContent("새로운 글을 넣습니다");
		model.setWriter("user00");

		dao.create(model);
	}

	@Test
	public void testRead() throws Exception {
		System.out.println(dao.read(1));
	}

	@Test
	public void testUpdate() throws Exception {
		BoardModel model = new BoardModel();
		model.setBno(1);
		model.setTitle("수정된 글입니다");
		model.setContent("수정 테스트");

		dao.update(model);
	}
	
	@Test
	public void testDelete() throws Exception {
		dao.delete(1);
	}
}