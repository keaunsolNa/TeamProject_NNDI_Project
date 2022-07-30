package com.nndi.client.board;

import java.util.List;

import com.nndi.model.commondto.AdmireDTO;
import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.commondto.TCREmploymentDTO;
import com.nndi.model.joindto.client.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;


public interface UserBoardMapper {
	
	/* 민원 조회 */
	List<BoardDTO> selectBoardList();
	
	/* 민원 신청 */
	int insertComplain(BoardDTO board);

	/* 민원 상세 조회 */
	BoardAndCategoryDTO complainDetail(int num);

	/* 민원 수정 */
	int updateComplain(BoardDTO board);
	
	/* 공지사항 전체 조회 */
	List<NoticeDTO> selectNotice();
	
	/* 공지사항 상세 조회 */
	NoticeDTO selectNoticeDetail(int num);

	/* 민원 삭제(컬럼값 변경) */
	int deleteComplain(int num);
	
	/* 민원게시판 답변 상세 조회 */
	BoardAndCategoryDTO selectComplainAnswer(int num);
	
	/* 공지사항 조회수 증가 업데이트 */
	int incrementNoticeCount(int num);
	
	/* 민원 게시판 조회수 증가 업데이트 */
	int incrementComplainCount(int num);
	
	/* 강사 모집 게시판 전체 조회 */
	List<TCREmploymentDTO> selectEmployee();
	
	/* 강사 모집 상세 조회 */
	TCREmploymentDTO selectEmpDetail(int num);
	
	/* 칭찬 게시판 전체 조회 */
	List<AdmireAndCategoryDTO> selectAllCommendList();
	
	/* 칭찬 게시판 상세 조회 */
	AdmireAndCategoryDTO commendDetail(int num);

	/* 칭찬 게시판 삭제(컬럼 변경) */
	int deleteCommend(int num);
	
	/* 칭찬 게시판 작성하기 */
	int insertCommend(AdmireDTO commend);
	
	/* 칭찬 게시판 수정하기 */
	int updateCommend(AdmireDTO board);
	
	/* 칭찬 게시판 조회수 증가 */
	int incrementCommendCount(int num);
	
	/* 칭찬게시판 수정하기 기본값 불러오기 */
	AdmireAndCategoryDTO detailUpdatecmd(int num);
	
	/* 민원게시판 수정하기 기본값 불러오기 */
	BoardAndCategoryDTO detaulUpdateCmp(int num);





}
