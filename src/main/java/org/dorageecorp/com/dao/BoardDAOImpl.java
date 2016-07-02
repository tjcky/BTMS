package org.dorageecorp.com.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.model.BoardModel;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "org.dorageecorp.mapper.BoardMapper";

	@Override
	public void create(BoardModel boardModel) throws Exception {
		session.insert(namespace + ".create", boardModel);
	}

	@Override
	public BoardModel read(Integer bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(BoardModel boardModel) throws Exception {
		session.update(namespace + ".update", boardModel);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}

	@Override
	public List<BoardModel> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}
}