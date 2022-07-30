package com.nndi.admin.teacher;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.admin.board.BoardMapper;
import com.nndi.admin.classes.ClassMapper;
import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.TeacherDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

public class TeacherService {

	private TeacherMapper mapper;

	/* 강사 전체 조회 */
	public List<TeacherDTO> selectAllTeacherList() {

		System.out.println("서비스 도착");

		SqlSession sqlSession = getSqlSession();

		mapper = sqlSession.getMapper(TeacherMapper.class);

		List<TeacherDTO> teacherList = mapper.selectAllTeacherList();

		System.out.println("Service : " + teacherList);

		return teacherList;
	}

	/* 강사 상세 조회 */
	public TeacherDTO selectOneTeacherByNo(int no) {

		System.out.println("서비스 도착");

		SqlSession sqlSession = getSqlSession();

		mapper = sqlSession.getMapper(TeacherMapper.class);

		TeacherDTO detailTeacher = mapper.selectOneTeacherByNo(no);

		System.out.println("Service : " + detailTeacher);

		return detailTeacher;
	}

	/* 강사 등록 */
	public int insertTeacher(TeacherDTO teacher) {

		System.out.println("Service 도착");

		SqlSession sqlSession = getSqlSession();

		mapper = sqlSession.getMapper(TeacherMapper.class);

		int result = mapper.insertTeacher(teacher);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		return result;

	}

	/* 강사 삭제 */
	public int deleteTeacher(String no) {

		System.out.println("Service 도착");

		SqlSession sqlSession = getSqlSession();

		mapper = sqlSession.getMapper(TeacherMapper.class);

		int result = mapper.deleteTeacher(no);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		return result;
	}

	/* 강사 수정 */
	public int updateTeacher(TeacherDTO teacher) {
		
		System.out.println("Service 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(TeacherMapper.class);
		
		int result = mapper.updateTeacher(teacher);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		return result;
	}

	/* 강사 재계약 요청 */
	public int recontactTeacher(String no) {
		
		System.out.println("Service 도착");

		SqlSession sqlSession = getSqlSession();

		mapper = sqlSession.getMapper(TeacherMapper.class);

		int result = mapper.recontactTeacher(no);

		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}

		return result;
	}

}
