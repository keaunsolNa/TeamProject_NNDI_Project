package com.nndi.client.classes;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public class ClassListService {
	
	private static ClassListDAO classmapper;

	public Map<String, List<ClassesAndTeacherAndCenterDTO>> ClassList() {
		
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = classmapper.ClassList();		//신청가능 강좌 목록
		List<ClassesAndTeacherAndCenterDTO> classdto2 = classmapper.ClassOffList(); //신청 불가 강좌 목록
		
		System.out.println("dto 서비스 확인용" + classdto);

		Map<String, List<ClassesAndTeacherAndCenterDTO>> classList = new HashMap<String, List<ClassesAndTeacherAndCenterDTO>>();
		
		classList.put("possibleCls", classdto);
		classList.put("impossibleCls", classdto2);
		
		
		return classList;
	}

	public ClassesAndTeacherAndCenterDTO classdetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassesAndTeacherAndCenterDTO classdto = classmapper.ClassListDetail(num);
		return classdto;
	}

	public List<ClassesAndTeacherAndCenterDTO> ClassPhysicalList() {
		
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = classmapper.ClassPhysicalList();
		
		System.out.println("서비스 에서 dto 확인용" + classdto);
		
		sqlSession.close();
		
		return classdto;
	}

	public List<ClassesAndTeacherAndCenterDTO> ClassCultureLand() {
		SqlSession sqlSession = getSqlSession();
		
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = classmapper.ClassCultureLand();
		
		System.out.println("서비스 에서 dto 확인용" + classdto);
		
		sqlSession.close();
		
		return classdto;
	}

	public ClassesAndTeacherAndCenterDTO classphdetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassesAndTeacherAndCenterDTO classdto = classmapper.ClassPHDetail(num);
		return classdto;
	}

	public ClassesAndTeacherAndCenterDTO classculturedetail(int num) {
		SqlSession sqlSession = getSqlSession();
		classmapper = sqlSession.getMapper(ClassListDAO.class);
		System.out.println("서비스 객체 확인용");
		
		ClassesAndTeacherAndCenterDTO classdto = classmapper.classculturedetail(num);
		return classdto;
	}

}
