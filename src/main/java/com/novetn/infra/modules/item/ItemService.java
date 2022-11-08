package com.novetn.infra.modules.item;

import java.util.List;

	public interface ItemService {

	public List<Item> selectList(ItemVo vo) throws Exception;
	
//	메인페이지
	public List<Item> selectHotdealwmp(ItemVo vo) throws Exception;
	public List<Item> selectHotdealtmon(ItemVo vo) throws Exception;
	public List<Item> selectHotdeal11st(ItemVo vo) throws Exception;
	public List<Item> selectBestlist(ItemVo vo) throws Exception;
	public Item selectView(ItemVo vo) throws Exception;
	public Item selectSection(ItemVo vo) throws Exception;
	
//	이미지 업로드
	public List<Item> selectUploadedimg(ItemVo vo) throws Exception;
	
	public int insert(Item dto) throws Exception;
	public void update(Item dto) throws Exception;
	public int uelete(Item dto) throws Exception;
	public int delete(ItemVo vo) throws Exception;
	
	public Item selectOne(ItemVo vo) throws Exception;
	public int selectOneCount(ItemVo vo) throws Exception;
//	public Item selectItemView(ItemVo vo) throws Exception;
	
	public Item selectItemimg(ItemVo vo) throws Exception;
	public int insertUploaded(Item dto) throws Exception;
	public int updateUploaded(Item dto) throws Exception;
	
}
