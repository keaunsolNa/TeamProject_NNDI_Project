package com.nndi.client.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.QnaDTO;

public interface QNABoardListMapper {

	/* 문의글 전체 조회 하기 */
	List<QnaDTO> QNABoardList();

	/* 문의글 상세 조회 하기 */
	QnaDTO QNABoardListDetail(int num);

	/* 마이페이지에서 문의글 조회 하기 */
	List<QnaDTO> MyPageQNAList(String loginId);
	
	/* 문의글 조회수 기능 */
	int incrementQnaCount(int num);	

}
