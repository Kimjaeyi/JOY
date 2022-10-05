package com.novetn.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result : " + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Code dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " cached !");
	}
	
//	public static List<Code> selectListCachedCode(String seq) throws Exception {
//		List<Code> rt = new ArrayList<Code>();
//		for(Code codeRow : Code.cachedCodeArrayList) {
//			if (codeRow.getCodeGroup_seq().equals(seq)) {
//				rt.add(codeRow);
//			} else {
//				// by pass
//			}
//		}
//		return rt;
//	}
	
	public static List<Code> selectListCachedCode(String seq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCodeGroup_seq().equals(seq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
		
	}
	
	public static String selectOneCachedCode(String seq) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getSeq().equals(seq)) {
				rt = codeRow.getCdname_ko();
			} else {
				// by pass
			}
		}
		return rt;
		
	}
	
	
//	public static void clear() throws Exception {
//		Code.cachedCodeArrayList.clear();
//	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		Code result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Code> codeGroupNameAdd(CodeVo vo) throws Exception {
		return dao.codeGroupNameAdd(vo);
	}
	
}
