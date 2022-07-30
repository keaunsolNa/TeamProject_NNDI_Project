package com.nndi.client.member_info.book;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.member_info.book.MemberAndBookRentDTO;

public class MemberBookService {

	private MemberBookRentMapper mapper;
	
	/* 고객 대출 도서 목록(반납 안된 것들만) 조회할 Service */
	public List<MemberAndBookRentDTO> UserRentBook(MemberAliveDTO member) {
		
		SqlSession sqlSession = getSqlSession();
		
		/* mapper 하위 구현체 생성 */
		mapper = sqlSession.getMapper(MemberBookRentMapper.class);
		
		/* 결과값 bookRentList 객체에 저장 */
		List<MemberAndBookRentDTO> bookRentList = mapper.selectBookRentList(member);
		System.out.println("Service에서 리턴받은 결과값: " + bookRentList);

		/* 세션 종료 */
		sqlSession.close();
		
		/* 결과 값 반환 */
		return bookRentList;
	}


}
