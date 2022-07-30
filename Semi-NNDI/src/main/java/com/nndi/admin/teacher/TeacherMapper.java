package com.nndi.admin.teacher;

import java.util.List;

import com.nndi.model.commondto.TeacherDTO;

public interface TeacherMapper {
	
	/* 강사 전체 보기 */
	List<TeacherDTO> selectAllTeacherList();
	
	/* 강사정보 상세보기 */
	TeacherDTO selectOneTeacherByNo(int no);
	
	/* 강사 등록 */
	int insertTeacher(TeacherDTO teacher);

	/* 강사 정보 수정(update) */
	int updateTeacher(TeacherDTO no);
	
	/* 강사 삭제 */
	int deleteTeacher(String no);

	/* 강사 재계약 요청 */
	int recontactTeacher(String no);



}


