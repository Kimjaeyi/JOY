package com.novetn.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class CodeGroupServicempl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList() throws Exception {
		return dao.selectList();
	}
	
}
