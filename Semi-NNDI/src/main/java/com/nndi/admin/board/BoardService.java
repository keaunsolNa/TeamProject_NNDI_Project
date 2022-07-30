package com.nndi.admin.board;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.FAQDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.commondto.QnaDTO;
import com.nndi.model.commondto.TCREmploymentDTO;
import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;
import com.nndi.model.joindto.admin.board.EmpTeacherAndClassDTO;
import com.nndi.model.joindto.admin.board.FAQAndCategoryDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;
import com.nndi.model.joindto.admin.board.QnaAndCategoryDTO;

public class BoardService {
	
	private BoardMapper mapper;
	
	/* 공지사항 전체 조회 */
	public List<NoticeAndCategoryDTO> selectAllNoticeList() {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<NoticeAndCategoryDTO> noticeList = mapper.selectAllNoticeList();
		
		System.out.println("Service : " + noticeList);
		
		return noticeList;
	}

	/* 공지사항 상세 보기 */
	public NoticeAndCategoryDTO selectOneByNumNotice(int num) {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		NoticeAndCategoryDTO detailNotice = mapper.selectOneByNumNotice(num);
		
		System.out.println("Service : " + detailNotice);
		
		return detailNotice;
	}

	/* 민원 전체 조회 */
	public List<ComplainAndCategoryDTO> selectAllComplainList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<ComplainAndCategoryDTO> complainList = mapper.selectAllComplainList();
		
		for(ComplainAndCategoryDTO complain : complainList) {
			System.out.println("Service : " + complain);
		}
		
		return complainList;
	}

	/* 민원 상세 조회 */
	public ComplainAndCategoryDTO selectOneByNumComplain(int num) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		ComplainAndCategoryDTO detailComplain = mapper.selectOneByNumComplain(num);
		
		System.out.println("Service : " + detailComplain);
		
		return detailComplain;
	}

	/* 칭찬하기 전체 조회 */
	public List<AdmireAndCategoryDTO> selectAllAdmireList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<AdmireAndCategoryDTO> admireList = mapper.selectAllAdmireList();
		
		for(AdmireAndCategoryDTO admire : admireList) {
			System.out.println("Service : " + admire);
		}
		
		return admireList;
	}

	/* 칭찬하기 상세 조회 */
	public AdmireAndCategoryDTO selectOneByNumAdmire(int num) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		AdmireAndCategoryDTO detailAdmire = mapper.selectOneByNumAdmire(num);
		
		System.out.println("Service : " + detailAdmire);
		
		return detailAdmire;
	}

	/* 민원 답변 */
	public int UpdateComplainRE(ComplainDTO complain) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.UpdateComplainRE(complain);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	
	/* FAQ 전체 조회 */
	public List<FAQAndCategoryDTO> selectAllFAQList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<FAQAndCategoryDTO> faqList = mapper.selectAllFAQList();
		
		System.out.println("faqList : " + faqList);
		
		return faqList;
		
	}
	
	/* FAQ 상세 보기 */
	public FAQAndCategoryDTO selectFAQOneByNum(int num) {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		FAQAndCategoryDTO detailFaq = mapper.selectFAQOneByNum(num);
		
		System.out.println("Service : " + detailFaq);
		
		return detailFaq;
	}
	
	/* QNA 전체 조회 */
	public List<QnaAndCategoryDTO> selectAllQnaList() {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<QnaAndCategoryDTO> qnaList = mapper.selectAllQnaList();
		
		System.out.println("Service : " + qnaList);
		
		return qnaList;
	}
	
	/* QNA 상세 보기 */
	public QnaAndCategoryDTO selectQnaOneByNum(int num) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		QnaAndCategoryDTO detailqna = mapper.selectQnaOneByNum(num);
		
		System.out.println("Service : " + detailqna);
		
		return detailqna;
	}
	

	/* QNA 답변하기 */
	public int UpdateQnaRE(QnaDTO qna) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		System.out.println("Service에서 전달받은 qna 내용 :" + qna);
		int result = mapper.UpdateQnaRE(qna);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	
	/* Qna 삭제 */
	public int deleteQnaRE(int qna) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		System.out.println("Service에서 전달받은 qna 내용 :" + qna);
		int result = mapper.DeleteQnaRE(qna);
		System.out.println("쿼리 결과값: " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	
	/* FAQ 수정 */
	public int UpdateFaqRE(FAQDTO faq) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.UpdateFaqRE(faq);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 칭찬하기 글 삭제 */
	public int deleteAdmire(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteAdmire(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 민원 삭제 */
	public int deleteComplain(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteComplain(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 공지사항 삭제 */
	public int deleteNotice(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteNotice(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	
	/* FAQ 삭제 */
	public int deletefaq(int num) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deletefaq(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	
	/* FAQ 등록 */
	public int insertFaqRE(FAQDTO insertFaq) {
		
		SqlSession sqlSession = getSqlSession();
		
		sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.insertfaq(insertFaq);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}
	

	/* 강사모집 전체조회 */
	public List<EmpTeacherAndClassDTO> selectAllEmpTeacherList() {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		List<EmpTeacherAndClassDTO> empTeacherList = mapper.selectAllEmpTeacherList();
		
		System.out.println("Service : " + empTeacherList);
		
		return empTeacherList;
	}

	/* 강사모집 상세조회 */
	public EmpTeacherAndClassDTO selectOneByNumEmp(int num) {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		EmpTeacherAndClassDTO detailEmp = mapper.selectEmpOneByNum(num);
		
		System.out.println("Service : " + detailEmp);
		
		return detailEmp;
	}

	/* 강사모집 삭제 */
	public int deleteEmpTcr(int num) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.deleteEmpTcr(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 강사모집 수정 */
	public int updateEmpTcr(TCREmploymentDTO emp) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.updateEmpTcr(emp);
		
		System.out.println( "Service :  " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 강사모집 등록 */
	public int insertEmpTcr(TCREmploymentDTO emp) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.insertEmpTcr(emp);
		
		System.out.println( "Service :  " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 공지사항 등록 */
	public int insertNotice(NoticeDTO addNotice) {

		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.insertNotice(addNotice);
		
		System.out.println( "Service :  " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 공지사항 수정 */
	public int updateNotice(NoticeDTO updateNotice) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.updateNotice(updateNotice);
		
		System.out.println( "Service :  " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* Faq 작성 */
	public int inserFaq(FAQDTO faqDTO) {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BoardMapper.class);
		
		int result = mapper.insertNewFaq(faqDTO);
		
		System.out.println("Service : " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	


}
