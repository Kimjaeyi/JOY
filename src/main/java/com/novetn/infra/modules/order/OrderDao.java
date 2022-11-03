package com.novetn.infra.modules.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

public class OrderDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	 
	private static String namespace = "com.novetn.infra.modules.order.OrderMapper";
	
	public List<Order> selectList(OrderVo vo) { 
		List<Order> list = sqlSession.selectList("com.novetn.infra.modules.order.OrderMapper.selectList", vo);
		return list; 
	}
	
	public int insert(Order dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Order dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(Order dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(OrderVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public Order selectOne(OrderVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int selectOneCount(OrderVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
}
