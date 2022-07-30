package com.nndi.client.board;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.FAQDTO;

public class FAQListService {
	
	private static FAQListDAO FAQmapper;

	public static List<FAQDTO> FAQlistservice() {
		SqlSession sqlSession = getSqlSession();
		FAQmapper = sqlSession.getMapper(FAQListDAO.class);
		
		List<FAQDTO> faqdto = FAQmapper.FAQlist();
		return faqdto;
		
		
	}

	public FAQDTO FaqDetail(int num) {
		SqlSession sqlSession = getSqlSession();
		FAQmapper = sqlSession.getMapper(FAQListDAO.class);

		/* 조회수 증가용 */
		int result = FAQmapper.incrementFAQ(num);
		
		FAQDTO faqdto = null;
		
		if(result>0) {
			faqdto = FAQmapper.FAQListDetail(num);
			
			if(faqdto != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return faqdto;
	}

}
