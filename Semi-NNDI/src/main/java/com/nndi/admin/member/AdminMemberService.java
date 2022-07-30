package com.nndi.admin.member;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;
import com.nndi.model.joindto.admin.member.ClassMemberAndClassDTO;
import com.nndi.model.joindto.admin.member.MemberTotalDTO;

public class AdminMemberService {
	
	private MemberMapper mapper;
	
	/* 활동 회원 전체 조회 리스트 */
	public List<MemberTotalDTO> selectAllmemberAliveList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		List<MemberTotalDTO> memberAliveList = mapper.selectAllMemberAliveList();
		
		System.out.println("Service : " + memberAliveList);
		
		return memberAliveList;
	}	
	
	/*  회원정보 상세 보기 */
	public MemberTotalDTO selectOneMemberAliveById(String id) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		MemberTotalDTO detailMemberAlive = mapper.selectOneMemberAliveById(id);
		
		System.out.println("Service : " + detailMemberAlive);
		
		return detailMemberAlive;
		
	}
	
	/* 휴면회원 리스트 조회 */
	public List<MemberAliveDTO> selectAllRestMemberList() {
	
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		List<MemberAliveDTO> memberRestList = mapper.selectAllRestMemberList();
		
		System.out.println("Service : " + memberRestList);
		
		return memberRestList;
	}
	
	
	/* 휴면회원 -> 일반회원 전환 */
	public int updateRestMember(String id) {
		
		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		int result = mapper.updateRestMember(id);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 해당 회원의 대출도서 내역 */
	public List<BookRentAndBookInfoDTO> memberRentBookList(String memId) {
		
		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		List<BookRentAndBookInfoDTO> memberRentBookList = mapper.memberRentBookList(memId);
		
		System.out.println("Service : " + memberRentBookList);
		
		return memberRentBookList;
	}

	public List<ClassMemberAndClassDTO> memberClasList(String memId) {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(MemberMapper.class);
		
		List<ClassMemberAndClassDTO> memberClasList = mapper.memberClasList(memId);
		
		System.out.println("Service : " + memberClasList);
		
		return memberClasList;
	}

	
}
	





