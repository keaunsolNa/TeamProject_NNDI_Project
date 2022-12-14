package com.nndi.common.login;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.MemberDeadDTO;

public class MemberLoginService {

	private LoginMapper mapper;
	
	/* Member Login Service */
	public MemberAliveDTO memberLoginService(MemberAliveDTO memberAlive) {

		SqlSession sqlSession = getSqlSession();
		MemberAliveDTO loginMember = null;
		
		mapper = sqlSession.getMapper(LoginMapper.class);

		String encPwd = mapper.LoginCheck(memberAlive);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();		
		
		if(passwordEncoder.matches(memberAlive.getPwd(), encPwd)) {
			loginMember = mapper.selectLoginMember(memberAlive);
		}
		
		sqlSession.close();
		
		return loginMember;

	}
	
	/* RestMember Login Service */
	public MemberAliveDTO restMemberLoginSevice(MemberAliveDTO memberAlive) {
		
		SqlSession sqlSession = getSqlSession();
		MemberAliveDTO restLoginMember = null;
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		String encPwd = mapper.restLoginCheck(memberAlive);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(memberAlive.getPwd(), encPwd)) {
			restLoginMember = mapper.selectRestLoginMember(memberAlive);
			
		}
		
		sqlSession.close();
		
		return restLoginMember;
		
	}

	/* After Member Login LastLogin Column Update Service */
	public int memberLastLoginService(MemberAliveDTO memberAlive) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		int result = mapper.updateLastLogin(memberAlive);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
		
	}

	/* Member Id Find Service */
	public String findMemberIdByQ(MemberAliveDTO memberAlive) {

		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		String result = mapper.findMemberIdByQ(memberAlive);
		
		sqlSession.close();
		
		return result;
	}

	/* Update RestMember Service */ 
	public int updateRestMember() {

		System.out.println("?????? ?????? SchedulerJob execute ??????");
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		int result = mapper.updateRestMember();
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	/* Delete OutMember Service */
	public int deleteOutMember() {
		
		System.out.println("?????? ?????? SchedulerJob execute ??????");
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(LoginMapper.class);
		MemberDeadDTO deadMemberList = new MemberDeadDTO();
		
		/* OutMemberList Select */
		System.out.println("??????????????? 1??? ?????? ?????? ?????? ????????? SELECT ??????");
		MemberAliveDTO outMemberList = mapper.selectOutMemberList();
		System.out.println("??????????????? 1??? ?????? ?????? ?????? ????????? : " + outMemberList);
		int result = 0;
		
		deadMemberList.setPhone1(outMemberList.getPhone1());
		deadMemberList.setPhone2(outMemberList.getPhone2());
		deadMemberList.setPhone3(outMemberList.getPhone3());
		deadMemberList.setEmail1(outMemberList.getEmail1());
		deadMemberList.setEmail2(outMemberList.getEmail2());
		deadMemberList.setAddress1(outMemberList.getAddress1());
		deadMemberList.setAddress2(outMemberList.getAddress2());
		deadMemberList.setAddress3(outMemberList.getAddress3());
		deadMemberList.setId(outMemberList.getId());
		deadMemberList.setPwd(outMemberList.getPwd());
		deadMemberList.setBirth(outMemberList.getBirth());
		deadMemberList.setName(outMemberList.getName());
		deadMemberList.setGender(outMemberList.getGender());
		
		System.out.println("SELECT??? ??????????????? DeadMember??? ?????? DTO ?????? ????????? :" + deadMemberList);
		if(outMemberList.equals(null)) {
			System.out.println("????????? ??????, Session ??????");
			sqlSession.close();
			result = 0;
		} else {
			
			/* insert DeadMember */
			System.out.println("????????? ??????, Insert ??????");
			int insertResult = mapper.insertDeadMember(deadMemberList);
			System.out.println("Insert ?????? ??? :" + insertResult);
			
			/* Delete MemberAlive */
			System.out.println("Insert ??? Delete ??????");
			int deleteResult = mapper.deleteOutMember();
			System.out.println("Delete ?????? ???: " + deleteResult);
			if(insertResult > 0 && deleteResult > 0) {
				sqlSession.commit();
				result = 1;
			} else {
				sqlSession.rollback();
				result = 0;
			}

		}
		
		sqlSession.close();
		
		return result;
	}

	/* Update RestMember By Login Service */
	public int restMemberUpdate(MemberAliveDTO memberAlive) {
		
		SqlSession sqlSession = getSqlSession();
		System.out.println("?????? ?????? ?????? ?????? Service");
		mapper = sqlSession.getMapper(LoginMapper.class);
		System.out.println(memberAlive.getId());
		int result = mapper.updateRestmemberLogin(memberAlive);
		System.out.println("Service?????? ?????? result??? : " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	/* ?????? ???????????? ????????? Service */
	public String selectMemberPwd(MemberAliveDTO memberAliveList) {

		SqlSession sqlSession = getSqlSession();

		mapper = sqlSession.getMapper(LoginMapper.class);
		
		String result = "0";
		
		/* User Password ?????? */
		String userPwd = mapper.selectMemberPwd(memberAliveList);
		
		/* ????????? ?????? ?????? ????????? ???????????? ?????? */
		if(userPwd.equals(userPwd.equals(null))) {
			return result;
		} else {
			return userPwd;
		}
	}

	/* ?????? ???????????? Update ??? Service */
	public int updateMemberpwd(MemberAliveDTO memberAliveListForPwd) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		int result = mapper.updateMemberPassword(memberAliveListForPwd);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* ???????????? ????????? ????????? ???????????? */
	public int selectCheckUserId(String userId) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		int count = mapper.selectCheckUserId(userId);
		
		return count;
	}

	/* ???????????? ???????????? ?????? ?????? */
	public String selectOneMemberAliveById(String id) {

		System.out.println("Service~~~!!!!!");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(LoginMapper.class);
		
		String email = mapper.selectOneMemberAliveById(id);
		
		System.out.println("Service : " + email);
		
		return email;
	}

	
	
	
}
