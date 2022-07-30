package com.nndi.admin.classes;

import java.util.List;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.TeacherDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public interface ClassMapper {

	/* 강좌 전체 조회 */
	List<ClassesAndTeacherAndCenterDTO> selectAllClassList();

	/* 강좌 상세 조회 */
	ClassesAndTeacherAndCenterDTO selectOneByNumClass(int num);

	/* 강좌 수정, 등록시 강사 존재여부 확인 */
	List<TeacherDTO> selectTeacher(String tcrName);

	/* 강좌 수정 */
	int updateClass(ClassDTO cls);

	/* 강좌 삭제 */
	int deleteClass(int num);

	/* 강좌 등록 */
	int insertClass(ClassDTO cls);
	
}
