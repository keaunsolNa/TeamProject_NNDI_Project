package com.nndi.client.classes;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.joindto.client.ClassAndClasspaymentDTO;

public class MyPageClassService {
	private  ClasspaymentMapper mapper;
	public List<ClassAndClasspaymentDTO> MyPageClassSelectServlet(String loginId) {
		
		SqlSession sqlSession = getSqlSession();
		mapper = sqlSession.getMapper( ClasspaymentMapper.class);
		
		List<ClassAndClasspaymentDTO> classandpaymentdto = mapper.MypageclassList(loginId);
		
		return classandpaymentdto;
	}

}
