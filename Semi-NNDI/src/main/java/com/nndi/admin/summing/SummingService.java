package com.nndi.admin.summing;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ComplainDTO;
import com.nndi.model.commondto.FAQDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.commondto.QnaDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;
import com.nndi.model.joindto.admin.rent.RentAndMemberAliveDTO;

import static com.nndi.common.config.Template.getSqlSession;

public class SummingService {
	
	private SummingMapper mapper;

	/* 게시글 통계 */
	public Map<String, Object> postSummingRequestList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(SummingMapper.class);
		
		Map<String, Object> postSummingRequestList = new HashMap<String, Object>();
		
		int complainTotalcnt = mapper.selectTotalComplain();
		int complainRECnt = mapper.selectComplainRECnt();
		int complainNotRECnt = mapper.selectComplainNotRECnt();
		
		int qnaTotalcnt = mapper.selectQnaTotalcnt();
		int qnaRECnt = mapper.selectQnaRECnt();
		int qnaNotRECnt = mapper.selectQnaNotRECnt();
		
		List<NoticeDTO> noticeHitTops = mapper.selectNoticeHitTops();
		List<FAQDTO> faqHitTops = mapper.selectFaqHitTops();
		
		postSummingRequestList.put("complainTotalcnt", complainTotalcnt);
		postSummingRequestList.put("complainRECnt", complainRECnt);
		postSummingRequestList.put("complainNotRECnt", complainNotRECnt);
		postSummingRequestList.put("qnaTotalcnt", qnaTotalcnt);
		postSummingRequestList.put("qnaRECnt", qnaRECnt);
		postSummingRequestList.put("qnaNotRECnt", qnaNotRECnt);
		postSummingRequestList.put("noticeHitTops", noticeHitTops);
		postSummingRequestList.put("faqHitTops", faqHitTops);
		
		System.out.println("Service " + postSummingRequestList);
		
		return postSummingRequestList;
	}

	/* 회원 통계 */
	public Map<String, Integer> memberSummingList() {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(SummingMapper.class);

		Map<String, Integer> memberSummingRequestList = new HashMap<String, Integer>();
		
		int aliveMemberCnt = mapper.aliveMembercnt();
		int restMemberCnt = mapper.restMemberCnt();
		int allMemberCnt = mapper.allMemberCnt();
		
		memberSummingRequestList.put("aliveMemberCnt", aliveMemberCnt);
		memberSummingRequestList.put("restMemberCnt", restMemberCnt);
		memberSummingRequestList.put("allMemberCnt", allMemberCnt);
		
		System.out.println("Service : " +memberSummingRequestList);
		
		return memberSummingRequestList;
	}

	/* 탈퇴 회원 통계 */
	public List<Integer> deadMemberSumming() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(SummingMapper.class);

		List<Integer> deadMemberSumming = new ArrayList<Integer>();
		
		int deadMemberSum = mapper.deadMemberSumming();
		
		deadMemberSumming.add(deadMemberSum);
		
		System.out.println("Service : " +deadMemberSumming);
		
		return deadMemberSumming;
	}

	/* 신규 회원 통계 */
	public List<Integer> newMemberSumming(Map<String, java.sql.Date> date) {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(SummingMapper.class);

		List<Integer> newMemberSumming = new ArrayList<Integer>();
		
		int newMemberSum = mapper.newMemberSum(date);
		
		newMemberSumming.add(newMemberSum);
		
		System.out.println("Service : " +newMemberSumming);
		
		return newMemberSumming;
	}

	/* 메인에 띄울 리스트들 */
	public Map<String, Object> mainRequestList() {

		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(SummingMapper.class);
		
		Map<String, Object> mainRequestList = new HashMap<String, Object>();
		
		List<ClassesAndTeacherAndCenterDTO> classList = mapper.selectClassList();
		List<QnaDTO> qnaList = mapper.selectQnaList();
		List<MemberAliveDTO> memberList = mapper.selectMemberList();
		List<RentAndMemberAliveDTO> rentList = mapper.selectRentList();
		
		mainRequestList.put("classList", classList);
		mainRequestList.put("qnaList", qnaList);
		mainRequestList.put("memberList", memberList);
		mainRequestList.put("rentList", rentList);
		
		System.out.println("Service " + mainRequestList);
		
		return mainRequestList;
	}

}
