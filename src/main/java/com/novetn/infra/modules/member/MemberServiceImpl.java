package com.novetn.infra.modules.member;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.novetn.infra.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		int result = dao.insert(dto);
		System.out.println("service result : " + result);
		return result;
	}
	
	@Override
	public int update(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		return dao.selectOneIdCheck(dto);
	}
	
	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.selectOneLogin(dto);
	}
	
	@Override
	public int infochange(Member dto) throws Exception {
		return dao.infochange(dto);
	}

	@Override
	public int unreg(Member dto) throws Exception {
		return dao.unreg(dto);
	}
	
	@Override
	public Member snsLoginCheck(Member dto) throws Exception {
	    return dao.snsLoginCheck(dto);
	}
	
	@Override
    public int naverInst(Member dto) throws Exception {
    	try {
    		dao.naverInst(dto);
    		return 1;
    	} catch (Exception e) {
    		throw new Exception();
		}
    }
	
	@Override
    public int kakaoInst(Member dto) throws Exception {
    	try {
    		dao.kakaoInst(dto);
    		return 1;
    	} catch (Exception e) {
    		throw new Exception();
		}
    }
	
//	@Override
//	public int changePW(Member dto) throws Exception {
//		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
//		return dao.update(dto);
//	}
	
}
