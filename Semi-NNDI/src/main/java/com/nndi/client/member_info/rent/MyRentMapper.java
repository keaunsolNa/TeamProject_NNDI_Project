package com.nndi.client.member_info.rent;

import java.util.List;


import com.nndi.model.commondto.RentRequestDTO;
import com.nndi.model.commondto.RentRequestSQLDTO;
import com.nndi.model.joindto.client.member_info.rent.RentRequestSQLAndCenterManagementDTO;

public interface MyRentMapper {
	
	/* 마이페이지 대관 신청 내역 조회 */
	List<RentRequestSQLAndCenterManagementDTO> selectMyRentRequest(String login);

	/* 마이페이지 대관 환불 내역 조회 */
	List<RentRequestSQLAndCenterManagementDTO> selectRentRefund(String login);
	
	/* 대관신청 철회 가능 리스트 조회 */
	List<RentRequestSQLAndCenterManagementDTO> selectRentCancel(String login);
	
	/* 대관 철회 Update */
	int updateCancel(int num);

	/* 대관 환불 신청 가능한 List */
	List<RentRequestSQLAndCenterManagementDTO> selectRefundUpdate(String login);
	
	/* 대관 환불 신청 update */
	int updateRefund(int num);

}
