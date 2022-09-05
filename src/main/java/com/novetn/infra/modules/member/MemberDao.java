package com.novetn.infra.modules.member;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

//	@Autowired와 비슷
	@Inject
	
//	어떤 DB와의 Connection인지 이름을 정해줌
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.novetn.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(){ return sqlSession.selectList(namespace + ".selectList"); }
	
}

