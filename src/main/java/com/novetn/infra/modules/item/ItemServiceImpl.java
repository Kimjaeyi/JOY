package com.novetn.infra.modules.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@Service
public class ItemServiceImpl implements ItemService{

	@Autowired
	ItemDao dao;
	
	@Override
	public List<Item> selectList(ItemVo vo) throws Exception {
		List<Item> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Item dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result : " + result);
		return result;
	}
	
	@Override
	public int update(Item dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Item dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(ItemVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public Item selectOne(ItemVo vo) throws Exception {
		Item result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}

	@Override
	public int selectOneCount(ItemVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
}
