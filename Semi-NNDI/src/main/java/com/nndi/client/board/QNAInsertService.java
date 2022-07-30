package com.nndi.client.board;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.QnaDTO;
import static com.nndi.common.config.Template.getSqlSession;;

public class QNAInsertService {
	private QNABoardDAO qnaboardDao;
	public int insertqna(QnaDTO qnadto) {

		SqlSession session = getSqlSession();
		
		qnaboardDao = session.getMapper(QNABoardDAO.class);
		
		int result = qnaboardDao.insertqna(qnadto);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		System.out.println(result + "반환값 확인");
		return result;

	}
	public int QNAUpdateService(QnaDTO qnadto) {

		SqlSession session = getSqlSession();
		
		qnaboardDao = session.getMapper(QNABoardDAO.class);
		
		int result = qnaboardDao.QNAUpdateDAO(qnadto);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		System.out.println(result + "반환값 확인");
		return result;

	}
	public int QNAdelete(QnaDTO qnadto) {
		SqlSession session = getSqlSession();
		
		qnaboardDao = session.getMapper(QNABoardDAO.class);
		
		int result = qnaboardDao.QNAdelete(qnadto);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		System.out.println(result + "반환값 확인");
		return result;
	}

}
