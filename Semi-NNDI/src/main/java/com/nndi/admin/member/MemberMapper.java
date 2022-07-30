package com.nndi.admin.member;

import java.util.List;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;
import com.nndi.model.joindto.admin.member.ClassMemberAndClassDTO;
import com.nndi.model.joindto.admin.member.MemberTotalDTO;

public interface MemberMapper {
	
	
	/* 활동 회원 전체 조회 리스트 */
	List<MemberTotalDTO> selectAllMemberAliveList();
	
	/* 활동 회원 상세정보 */
	MemberTotalDTO selectOneMemberAliveById(String id);

	/* 휴먼회원 리스트 조회 */
	List<MemberAliveDTO> selectAllRestMemberList();
	
	/* 휴면 -> 일반회원 전환 */
	int updateRestMember(String id);

	/* 해당 회원 도서대출내역 */
	List<BookRentAndBookInfoDTO> memberRentBookList(String memId);

	/* 해당 회원 수강내역 확인 */
	List<ClassMemberAndClassDTO> memberClasList(String memId);


}

