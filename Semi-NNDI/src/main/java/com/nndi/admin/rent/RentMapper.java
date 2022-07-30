package com.nndi.admin.rent;

import java.util.List;
import java.util.Map;

import com.nndi.model.joindto.admin.rent.RentAndMemberAliveDTO;

public interface RentMapper {

	/* 대관 요청 리스트 조회 */
	List<RentAndMemberAliveDTO> selectAllrentList();

	/* 대관 상세 조회 */
	RentAndMemberAliveDTO selectOneByNumRent(int num);

	/* 대관 승인 반려 수정 */
	int updateRent(Map<String, Object> updateRent);

}
