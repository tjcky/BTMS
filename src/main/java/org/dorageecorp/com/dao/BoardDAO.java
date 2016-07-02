package org.dorageecorp.com.dao;

import java.util.List;

import org.dorageecorp.com.model.BoardModel;

public interface BoardDAO {

	public void create(BoardModel boardModel) throws Exception;

	public BoardModel read(Integer bno) throws Exception;

	public void update(BoardModel boardModel) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<BoardModel> listAll() throws Exception;
}