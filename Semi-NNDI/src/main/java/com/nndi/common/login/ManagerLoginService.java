package com.nndi.common.login;

import static com.nndi.common.config.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;

/* 매니저 로그인 */
public class ManagerLoginService {
	
	private LoginMapper mapper;
	
	public ManagerDTO managerLoginService(ManagerDTO managerList) {
		
		SqlSession sqlSession = getSqlSession();
		ManagerDTO loginManager = null;
		
		mapper = sqlSession.getMapper(LoginMapper.class);

		String encPwd = mapper.adminLoginCheck(managerList);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();		
		
		if(passwordEncoder.matches(managerList.getPwd(), encPwd)) {
			loginManager = mapper.selectLoginManager(managerList);
		}
		
		sqlSession.close();
		
		return loginManager;
	}

}
