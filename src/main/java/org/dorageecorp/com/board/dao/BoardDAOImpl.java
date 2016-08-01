package org.dorageecorp.com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.board.model.Board;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession session;
	
	private static final String NAMESPACE = "org.dorageecorp.mapper.BoardMapper";

	@Override
	public void create(Board board) {
		session.insert(NAMESPACE + ".create", board);
	}

	@Override
	public Board read(Integer bno) {
		return session.selectOne(NAMESPACE + ".read", bno);
	}

	@Override
	public void update(Board board) {
		session.update(NAMESPACE + ".update", board);
	}

	@Override
	public void delete(Integer bno) {
		session.delete(NAMESPACE + ".delete", bno);
	}

	@Override
	public List<Board> listAll() {
		return session.selectList(NAMESPACE + ".listAll");
	}
}