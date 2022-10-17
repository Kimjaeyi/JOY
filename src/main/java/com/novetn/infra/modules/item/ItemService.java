package com.novetn.infra.modules.item;

import java.util.List;

	public interface ItemService {

	public List<Item> selectList(ItemVo vo) throws Exception;
	public List<Item> selectListHotdealwmp(ItemVo vo) throws Exception;
	List<Item> imageUploaded(ItemVo vo) throws Exception;
	
	public int insert(Item dto) throws Exception;
	public void update(Item dto) throws Exception;
	public int uelete(Item dto) throws Exception;
	public int delete(ItemVo vo) throws Exception;
	
	public Item selectOne(ItemVo vo) throws Exception;
	public int selectOneCount(ItemVo vo) throws Exception;
	
}
