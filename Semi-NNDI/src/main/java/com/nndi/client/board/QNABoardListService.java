package com.nndi.client.board;

import java.util.List;

import org.apache.catalina.Session;
import org.apache.ibatis.session.SqlSession;
import static com.nndi.common.config.Template.getSqlSession;

import com.nndi.model.commondto.QnaDTO;

public class QNABoardListService {
	private QNABoardListMapper mapper;
	
	
	public List<QnaDTO> QNABoardList() {
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(QNABoardListMapper.class);
		System.out.println("서비스 확인용");
		
		List<QnaDTO> commenddto = mapper.QNABoardList();
		return commenddto;
	}


	public QnaDTO QnaDetail(int num) {
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(QNABoardListMapper.class);
		
		int result = mapper.incrementQnaCount(num);
		
		QnaDTO qnadto = null;
		
		if(result > 0) {
			qnadto = mapper.QNABoardListDetail(num);
				if(qnadto != null) {
				  sqlSession.commit();
				}else {
				sqlSession.rollback();
				}
			}else {
				sqlSession.rollback();
			}
		return qnadto;
	}

	/* 마이페이지에서 문의글 조회하기 */
	public List<QnaDTO> MyPageQNAList(String loginId) {
		
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper(QNABoardListMapper.class);
		
		List<QnaDTO> mypageQNA = mapper.MyPageQNAList(loginId);
		
		return mypageQNA;
	}



}
