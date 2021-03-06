package com.mycompany.myapp.service.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.myapp.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject SqlSessionTemplate sql;
	public static String namespace = "com.mycompany.myapp.service.dao.MemberDAO";

	@Override
	public void MemberInsert(MemberVO membervo) throws Exception {
		sql.insert(namespace+".MemberInsert",membervo);
		
	}
//흠
	@Override
	public MemberVO LoginCheck(MemberVO membervo) throws Exception {
	
		return sql.selectOne(namespace+".LoginCheck",membervo);
	}

	@Override
	public int IdCheck(String param) throws Exception{
		int result = sql.selectOne(namespace+".IdCheck",param);
		return result;
	}
	
	@Override
	public int kakaoidfind(String nickname) throws Exception{
		int result = sql.selectOne(namespace+".kakaocheck",nickname);
		return result;
	}
	
	//비밀번호찾기
	public int updatePw(MemberVO vo) throws Exception {
		return sql.update(namespace+".updatePw", vo);
	}
	
	@Override
	public MemberVO readMember(MemberVO vo) {
		return sql.selectOne(namespace+".readMember", vo);
	}
	
	@Override
	public MemberVO findoneinfo(String nickname)throws Exception{
		return sql.selectOne(namespace+".findoneinfo",nickname);
	}
	
	// 회원정보 수정
	@Override
	public void MemberUpdate(MemberVO membervo) throws Exception {
		sql.update(namespace+".MemberUpdate",membervo);
	}
	
	// 회원 탈퇴
	@Override
	public void MemberDelete(MemberVO membervo) throws Exception {
		sql.delete(namespace+".MemberDelete",membervo);
	}
	
	// 회원주소 수정
	@Override
	public void updateAddress(MemberVO memberVO) {
		sql.update(namespace+".updateAddress",memberVO);
	}
	@Override
	public String findId(MemberVO memberVO) {
		return sql.selectOne(namespace+".findId", memberVO);
	}

}
