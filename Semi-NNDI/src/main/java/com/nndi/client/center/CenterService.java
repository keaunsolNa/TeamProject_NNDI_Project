package com.nndi.client.center;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.client.board.UserBoardMapper;
import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.CenterManagementDTO;
import com.nndi.model.commondto.RentRequestDTO;
import com.nndi.model.commondto.RentRequestSQLDTO;

public class CenterService {
	
	private static CenterMapper centerMapper;

	/* 대관시설 전체 리스트 조회 */
	public static List<CenterManagementDTO> selectCenterList() {
		
		SqlSession sqlSession = getSqlSession();
		
		centerMapper = sqlSession.getMapper(CenterMapper.class);
		
		List<CenterManagementDTO> centerList = centerMapper.selectCenterList();
		
		sqlSession.close();
		
		
		return centerList;
		
	}
	
	/* 대관 요청 조회 */
	public static List<RentRequestDTO> selectRentRequest(String num) {
		
		System.out.println("서비스 ");
		
		SqlSession sqlSession = getSqlSession();
		
		centerMapper = sqlSession.getMapper(CenterMapper.class);
		
		List<RentRequestDTO> rentRequest = centerMapper.selectRentRequest(num);
		
		sqlSession.close();
		
		return rentRequest;
	}

	/* 대관 상세 조회 */
	public static CenterManagementDTO selectCenterDetail(String num) {
		
		SqlSession sqlSession = getSqlSession();
		
		centerMapper = sqlSession.getMapper(CenterMapper.class);
		
		CenterManagementDTO centerDetail = centerMapper.selectCenterDetail(num);
		
		sqlSession.close();
		
		
		return centerDetail;
	}
	
	/* 대관 요청 */
	public static int insertRantReq(RentRequestSQLDTO rentReq) {
		
		SqlSession sqlSession = getSqlSession();
		
		centerMapper = sqlSession.getMapper(CenterMapper.class);
		int result = centerMapper.insertRantReq(rentReq);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

}
