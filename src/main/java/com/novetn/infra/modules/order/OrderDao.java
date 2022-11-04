package com.novetn.infra.modules.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
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
		return sqlSession.insert(namespace + ".insert", dto);
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
	
	public List<Order> couponList(OrderVo vo) {
		return sqlSession.selectList(namespace + ".couponList", vo);
	}
	
}
