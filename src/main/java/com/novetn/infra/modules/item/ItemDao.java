package com.novetn.infra.modules.item;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ItemDao {

	@Inject
	
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.novetn.infra.modules.item.ItemMapper";
	
	public List<Item> selectList(ItemVo vo) { 
		List<Item> list = sqlSession.selectList("com.novetn.infra.modules.item.ItemMapper.selectList", vo);
		return list; 
	}
	
	public int insert(Item dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Item dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	 
	public int uelete(Item dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(ItemVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public Item selectOne(ItemVo vo) {
		Item result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(ItemVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int insertUploaded(Item dto) {
		return sqlSession.update(namespace + ".insertUploaded", dto);
	}
	
	public int selectLastSeq() {
		return sqlSession.update(namespace + ".selectLastSeq");
	}

}
