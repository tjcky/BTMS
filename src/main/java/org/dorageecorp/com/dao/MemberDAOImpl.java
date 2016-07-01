package org.dorageecorp.com.dao;

import org.apache.ibatis.session.SqlSession;
import org.dorageecorp.com.model.MemberModel;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	private SqlSession sqlSession;

	private static final String namespace = "org.doragee.mapper.MemberMapper";

	@Override
	public String getTime() {
		return sqlSession.selectOne(namespace + ".getTime");
	}

	@Override
	public void insertMember(MemberModel memberModel) {
		sqlSession.insert(namespace + ".insertMember", memberModel);
	}
}