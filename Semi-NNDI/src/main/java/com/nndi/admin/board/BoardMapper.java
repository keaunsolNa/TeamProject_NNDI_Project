package com.nndi.admin.board;

import java.util.List;

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

public interface BoardMapper {

	/* 공지사항 전체 조회 */
	List<NoticeAndCategoryDTO> selectAllNoticeList();

	/* 공지사항 상세 보기 */
	NoticeAndCategoryDTO selectOneByNumNotice(int num);

	/* 민원 전체 조회 */
	List<ComplainAndCategoryDTO> selectAllComplainList();

	/* 민원 상세조회 */
	ComplainAndCategoryDTO selectOneByNumComplain(int num);

	/* 칭찬하기 전체 조회 */
	List<AdmireAndCategoryDTO> selectAllAdmireList();

	/* 칭찬하기 상세 조회 */
	AdmireAndCategoryDTO selectOneByNumAdmire(int num);

	/* 민원 답변 */
	int UpdateComplainRE(ComplainDTO complain);
	
	/* FAQ 전체 보기 */
	List<FAQAndCategoryDTO> selectAllFAQList();

	/* FAQ 상세 보기 */
	FAQAndCategoryDTO selectFAQOneByNum(int num);

	/* QNA 전체 보기 */
	List<QnaAndCategoryDTO> selectAllQnaList();
	
	/* QNA 상세 보기 */
	QnaAndCategoryDTO selectQnaOneByNum(int num);

	/* QNA 답변하기 */
	int UpdateQnaRE(QnaDTO qna);
	
	/* Qna 삭제 */
	int DeleteQnaRE(int qna);

	/* FAQ 수정 */
	int UpdateFaqRE(FAQDTO faq);

	/* 칭찬하기 삭제 */
	int deleteAdmire(int num);

	/* 민원 삭제 */
	int deleteComplain(int num);

	/* 공지사항 삭제 */
	int deleteNotice(int num);
	
	/* faq 삭제 */
	int deletefaq(int num);
	
	/* faq 등록 */
	int insertfaq(FAQDTO insertFaq);

	/* 강사모집 전체조회 */
	List<EmpTeacherAndClassDTO> selectAllEmpTeacherList();

	/* 강사모집 상세 조회 */
	EmpTeacherAndClassDTO selectEmpOneByNum(int num);

	/* 강사모집 삭제 */
	int deleteEmpTcr(int num);

	/* 강사모집 수정 */
	int updateEmpTcr(TCREmploymentDTO emp);

	/* 강사모집 등록 */
	int insertEmpTcr(TCREmploymentDTO emp);

	/* 공지사항 등록 */
	int insertNotice(NoticeDTO addNotice);

	/* 공지사항 수정 */
	int updateNotice(NoticeDTO updateNotice);

	/* FAQ 신규 등록 */
	int insertNewFaq(FAQDTO faqDTO);


}
