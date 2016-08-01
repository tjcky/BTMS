package org.dorageecorp.com.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.board.model.Member;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE = "org.dorageecorp.mapper.MemberMapper";

	@Override
	public String getTime() {
		return sqlSession.selectOne(NAMESPACE + ".getTime");
	}

	@Override
	public void insertMember(Member member) {
		sqlSession.insert(NAMESPACE + ".insertMember", member);
	}
}