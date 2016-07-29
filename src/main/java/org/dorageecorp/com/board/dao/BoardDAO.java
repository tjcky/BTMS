package org.dorageecorp.com.board.dao;

import java.util.List;

import org.dorageecorp.com.board.model.Board;

public interface BoardDAO {

	public void create(Board board);

	public Board read(Integer bno);

	public void update(Board board);

	public void delete(Integer bno);

	public List<Board> listAll();
}