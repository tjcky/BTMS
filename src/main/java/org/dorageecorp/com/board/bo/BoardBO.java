package org.dorageecorp.com.board.bo;

import java.util.List;

import org.dorageecorp.com.board.model.BoardModel;

public interface BoardBO {

	public void regist(BoardModel model) throws Exception;

	public BoardModel read(Integer bno) throws Exception;

	public void modify(BoardModel board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<BoardModel> listAll() throws Exception;
}
