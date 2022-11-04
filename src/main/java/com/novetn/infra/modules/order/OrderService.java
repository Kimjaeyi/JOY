package com.novetn.infra.modules.order;

import java.util.List;

public interface OrderService {

	public List<Order> selectList(OrderVo vo) throws Exception;
	public int insert(Order dto) throws Exception;
	public int update(Order dto) throws Exception;
	public int uelete(Order dto) throws Exception;
	public int delete(OrderVo vo) throws Exception;
	public Order selectOne(OrderVo vo) throws Exception;
	public int selectOneCount(OrderVo vo) throws Exception;
	public List<Order> couponList(OrderVo vo) throws Exception;
	
}
