package com.nndi.client.classes;

import java.util.List;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;
import com.nndi.model.joindto.client.ClassAndClasspaymentDTO;

public interface ClasspaymentMapper {

	/* 수강 인원 추가 */
    public int classmemberinsert(ClassMemberDTO classmemberdto);

    /* 수강 인원 추가 2 */
	public int classpaymentinsert(ClassPaymentDTO paymentdto);

	/* 마이페이지에서 수강 목록 조회 하기 */
	public List<ClassAndClasspaymentDTO> MypageclassList(String loginId);

	/* 수강한 회원인지 확인용 */
	public List<ClassPaymentDTO> clslist(ClassPaymentDTO paymentdto);

	/* 수강 취소 1 */
	public int classmembercancel(ClassMemberDTO classmemberdto);

	/* 수강 취소 2 */
	public int classpaymentcancel(ClassPaymentDTO paymentdto);

	/* 수강 인원 늘리기 */
	public int classplus(ClassPaymentDTO paymentdto);

	/* 수강 인원 줄이기 */
	public int classminus(ClassPaymentDTO paymentdto);
	
}
