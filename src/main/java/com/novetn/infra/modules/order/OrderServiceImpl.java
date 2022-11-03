package com.novetn.infra.modules.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDao dao;
	
	@Override
	public List<Order> selectList(OrderVo vo) throws Exception {
		List<Order> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Order dto) throws Exception {
		return dao.insert(dto);
	}
	
	@Override
	public int update(Order dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Order dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(OrderVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public Order selectOne(OrderVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(OrderVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
}
