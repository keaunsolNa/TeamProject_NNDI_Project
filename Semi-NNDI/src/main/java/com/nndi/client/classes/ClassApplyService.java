package com.nndi.client.classes;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;

public class ClassApplyService {
	private ClasspaymentMapper classapplymapper;

	public int classmemberinsert(ClassMemberDTO classmemberdto, ClassPaymentDTO paymentdto, String login) {
		System.out.println("서비스넘어온다");
		SqlSession session = getSqlSession();
		
		classapplymapper = session.getMapper(ClasspaymentMapper.class);
		
		List<ClassPaymentDTO> clspaydto = classapplymapper.clslist(paymentdto);
		
		
		System.out.println("이미 수강 했는지 확인용 dto ----" + clspaydto);
		int result = 0;

		if (clspaydto.isEmpty()) {
			int result1 = classapplymapper.classmemberinsert(classmemberdto);
			int result2 = classapplymapper.classpaymentinsert(paymentdto);
			int result3 = classapplymapper.classplus(paymentdto);
			
			if( result1>0 && result2>0 && result3>0) {
				session.commit();
				result = 1;
			} else {
				session.rollback();
			}
			session.close();
		}
		
		return result;
	}

	public int Classcancel(ClassMemberDTO classmemberdto, ClassPaymentDTO paymentdto) {
		
		SqlSession session = getSqlSession();
		
		classapplymapper = session.getMapper(ClasspaymentMapper.class);
		
		List<ClassPaymentDTO> clspaydto = classapplymapper.clslist(paymentdto); 
		System.out.println("이미 수강 했는지 확인용 dto" + clspaydto);
		
		int result = 0;

		if (!clspaydto.isEmpty()) {
			int result1 = classapplymapper.classmembercancel(classmemberdto);
			int result2 = classapplymapper.classpaymentcancel(paymentdto);
			int result3 = classapplymapper.classminus(paymentdto);
			System.out.println("결과값:" + result1);
			System.out.println("결과값:" + result2);
			System.out.println("결과값:" + result3);
			if( result1>0 && result2>0 &&result3>0) {
				session.commit();
				result = 1;
			} else {
				session.rollback();
			}
			session.close();
		}
		
		return result;
		
	}
}
