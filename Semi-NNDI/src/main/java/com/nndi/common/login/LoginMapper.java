package com.nndi.common.login;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.MemberDeadDTO;

public interface LoginMapper {

	/* 고객 로그인 체크 용 DAO */
	String LoginCheck(MemberAliveDTO memberAlive);

	/* 비크립트 체크 후 고객 정보 SELECT 용 DAO */
	MemberAliveDTO selectLoginMember(MemberAliveDTO memberAlive);

	/* 로그인 후 LastLogin 컬럼 UPDATE 용 DAO */
	int updateLastLogin(MemberAliveDTO memberAlive);

	/* 고객 질문으로 ID 찾기 용 DAO */
	String findMemberIdByQ(MemberAliveDTO memberAlive);

	/* 마지막 로그인 이후 60일 이상 지난 회원 휴면 고객 전환용 DAO */
	int updateRestMember();

	/* 탈퇴 회원 조회 용 DAO */
	MemberAliveDTO selectOutMemberList();

	/* DeadMember Talbe Insert 용 DAO */
	int insertDeadMember(MemberDeadDTO deadMemberList);

	/* 고객 컬럼 삭제용 DAO */
	int deleteOutMember();

	/* 관리자 로그인 체크 용 DAO */
	String adminLoginCheck(ManagerDTO managerList);

	/* 로그인 한 관리자 조회용 DAO */
	ManagerDTO selectLoginManager(ManagerDTO managerList);

	/* 로그인 고객 휴면 여부 체크 용 DAO */
	String restLoginCheck(MemberAliveDTO memberAlive);

	/* 휴면 고객 정보 조회용 DAO */
	MemberAliveDTO selectRestLoginMember(MemberAliveDTO memberAlive);

	/* 휴면 고객 해제 용 DAO */
	int updateRestmemberLogin(MemberAliveDTO memberAlive);

	/* 고객 비밀번호 조회용 DAO */
	String selectMemberPwd(MemberAliveDTO memberAliveList);

	/* 고객 비밀번호 초기화용 DAO */
	int updateMemberPassword(MemberAliveDTO newPassword);

	/* 회원가입 진행시 아이디 중복체크 */
	int selectCheckUserId(String userId);

	/* 이메일 인증을 위한 이메일 조회 */
	String selectOneMemberAliveById(String id);



}
