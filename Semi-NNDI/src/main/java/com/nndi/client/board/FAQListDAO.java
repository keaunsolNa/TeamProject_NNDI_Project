package com.nndi.client.board;

import java.util.List;

import com.nndi.model.commondto.FAQDTO;

public interface FAQListDAO {
	
	/* 자주 묻는 질문 전체 조회 */
	List<FAQDTO> FAQlist();

	/* 자주 묻는 질문 상세 조회 */
	FAQDTO FAQListDetail(int num);

	/* 조회수 증가 시키기 */
	int incrementFAQ(int num);
	

}
