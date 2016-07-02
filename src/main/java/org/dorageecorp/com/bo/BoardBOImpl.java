package org.dorageecorp.com.bo;

import java.util.List;

import javax.inject.Inject;

import org.dorageecorp.com.dao.BoardDAO;
import org.dorageecorp.com.model.BoardModel;
import org.springframework.stereotype.Service;

@Service
public class BoardBOImpl implements BoardBO {

	@Inject
	private BoardDAO dao;

	@Override
	public void regist(BoardModel model) throws Exception {
		dao.create(model);
	}

	@Override
	public BoardModel read(Integer bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void modify(BoardModel board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public List<BoardModel> listAll() throws Exception {
		return dao.listAll();
	}
}