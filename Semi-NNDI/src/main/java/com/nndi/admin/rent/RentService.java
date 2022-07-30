package com.nndi.admin.rent;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.joindto.admin.rent.RentAndMemberAliveDTO;
import static com.nndi.common.config.Template.getSqlSession;

public class RentService {
	
	private RentMapper mapper;

	/* 대관 요청 리스트 조회 */
	public List<RentAndMemberAliveDTO> selectAllrentList() {

		System.out.println("Service welcome");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RentMapper.class);
		
		List<RentAndMemberAliveDTO> rentList = mapper.selectAllrentList();
		
		for(RentAndMemberAliveDTO rent : rentList) {
			System.out.println("Service : " + rent);
		}
		
		
		return rentList;
	}

	/* 대관 상세 조회 */
	public RentAndMemberAliveDTO selectOneByNumRent(int num) {

		System.out.println("Service welcome");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RentMapper.class);
		
		RentAndMemberAliveDTO rent = mapper.selectOneByNumRent(num);
		
		return rent;
	}

	/* 대관 승인 반려 수정 */
	public int updateRent(Map<String, Object> updateRent) {

		System.out.println("Service welcome");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(RentMapper.class);
		
		int result = mapper.updateRent(updateRent);
		
		if(result > 0) {
			sqlSession.commit();
			System.out.println("완료");
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

}
