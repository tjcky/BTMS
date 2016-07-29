package org.dorageecorp.com.board.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.board.dao.BoardDAO;
import org.dorageecorp.com.board.model.Board;
import org.springframework.stereotype.Service;

@Service
public class BoardBOImpl implements BoardBO {

	@Inject
	private BoardDAO dao;

	@Override
	public void regist(Board model) throws Exception {
		dao.create(model);
	}

	@Override
	public Board read(Integer bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void modify(Board board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public List<Board> listAll() throws Exception {
		return dao.listAll();
	}
}