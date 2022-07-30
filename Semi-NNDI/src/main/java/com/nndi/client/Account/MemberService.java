package com.nndi.client.Account;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;

public class MemberService {

	private AccountMapper mapper;
	
	/* 회원 가입 Service */
	public int registMember(MemberAliveDTO memberlist) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(AccountMapper.class);
		
		int result = mapper.accountMember(memberlist);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}


	/* Manager Account Service*/
	public int registManager(ManagerDTO managerList) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(AccountMapper.class);
		
		int result = mapper.accountManager(managerList);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	/* ID 중복 체크용 Service */
	public int checkId(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}


	/* Member Update Service */
	public int UpdateMember(MemberAliveDTO updateMemberList) {
		
		System.out.println("Update 서블릿 도착");
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(AccountMapper.class);
		
		
		int result = mapper.updateMember(updateMemberList);
		System.out.println("update 결과: " + result);
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}


	public int deletemember(MemberAliveDTO loginMember) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(AccountMapper.class);
		
		int result = mapper.deleteMember(loginMember);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
	}


}
