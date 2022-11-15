package com.novetn.infra.modules.member;

import java.util.List;

public interface MemberService {

		public List<Member> selectList(MemberVo vo) throws Exception;
		public int insert(Member dto) throws Exception;
		public int update(Member dto) throws Exception;
		public int uelete(Member dto) throws Exception;
		public int delete(MemberVo vo) throws Exception;
		public Member selectOne(MemberVo vo) throws Exception;
		public int selectOneCount(MemberVo vo) throws Exception;
		public int selectOneIdCheck(Member dto) throws Exception;
		public Member selectOneId(Member dto) throws Exception;
		public Member selectOneLogin(Member dto) throws Exception;
		public int infochange(Member dto) throws Exception;
		public int unreg(Member dto) throws Exception;
		
		public Member snsLoginCheck(Member dto) throws Exception;
		public int naverInst(Member dto) throws Exception;
		public int kakaoInst(Member dto) throws Exception;
}
