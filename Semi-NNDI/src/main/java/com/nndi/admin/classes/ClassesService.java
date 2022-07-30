package com.nndi.admin.classes;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.TeacherDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;
import static com.nndi.common.config.Template.getSqlSession;

public class ClassesService {
	
	private ClassMapper mapper;

	/* 강좌 전체 조회 */
	public List<ClassesAndTeacherAndCenterDTO> selectAllClassList() {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		List<ClassesAndTeacherAndCenterDTO> classList = mapper.selectAllClassList();
		
		System.out.println(classList);
		
		return classList;
	}

	/* 강좌 상세 조회 */
	public ClassesAndTeacherAndCenterDTO selectOneByNumClass(int num) {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		ClassesAndTeacherAndCenterDTO cls = mapper.selectOneByNumClass(num);
		
		System.out.println(cls);
		
		return cls;
	}

	public int UpdateCls(ClassDTO cls) {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		int result = mapper.updateClass(cls);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 강좌 수정, 등록시 강사 존재여부 확인 */
	public List<TeacherDTO> selectTeacher(String tcrName) {

		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		List<TeacherDTO> tcr = mapper.selectTeacher(tcrName);
		
		
		return tcr;
	}

	/* 강좌 삭제 */
	public int deleteClass(int num) {
		
		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		int result = mapper.deleteClass(num);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 강좌 등록 */
	public int insertClass(ClassDTO cls) {
		
		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(ClassMapper.class);
		
		int result = mapper.insertClass(cls);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
		
	}
	
}
