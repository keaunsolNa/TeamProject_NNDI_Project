package com.nndi.client.member_info.book;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.BookRentDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.member_info.book.MemberAndBookRentDTO;

public interface MemberBookRentMapper {

	/* 대출 도서 목록 조회 Mapper */
	List<MemberAndBookRentDTO> selectBookRentList(MemberAliveDTO member);

}
