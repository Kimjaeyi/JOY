package com.novetn.infra.modules.item;

import java.util.List;

	public interface ItemService {

	public List<Item> selectList(ItemVo vo) throws Exception;
	public List<Item> selectHotdealwmp(ItemVo vo) throws Exception;
	public List<Item> selectUploadedimg(ItemVo vo) throws Exception;
	
	public int insert(Item dto) throws Exception;
	public void update(Item dto) throws Exception;
	public int uelete(Item dto) throws Exception;
	public int delete(ItemVo vo) throws Exception;
	
	public Item selectOne(ItemVo vo) throws Exception;
	public int selectOneCount(ItemVo vo) throws Exception;
	
	public Item selectItemimg(ItemVo vo) throws Exception;
	public int insertUploaded(Item dto) throws Exception;
	
}
