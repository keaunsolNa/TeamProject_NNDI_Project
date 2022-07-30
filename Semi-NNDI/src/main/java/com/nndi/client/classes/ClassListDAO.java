package com.nndi.client.classes;

import java.util.List;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public interface ClassListDAO {

	/* 강좌 전체 조회 하기 */
	List<ClassesAndTeacherAndCenterDTO> ClassList();

	/* 강좌 상세 조회 하기 */
	ClassesAndTeacherAndCenterDTO ClassListDetail(int num);

	/* 체육 강좌만 전체 조회 하기 */
	List<ClassesAndTeacherAndCenterDTO> ClassPhysicalList();

	/* 문화 강좌만 전체 조회 하기 */
	List<ClassesAndTeacherAndCenterDTO> ClassCultureLand();

	/* 체육 강좌 상세 조회 하기 */
	ClassesAndTeacherAndCenterDTO ClassPHDetail(int num);

	/* 문화 강좌 상세 조회 하기 */
	ClassesAndTeacherAndCenterDTO classculturedetail(int num);

	/* 마감 강좌 조회 */
	List<ClassesAndTeacherAndCenterDTO> ClassOffList();
}
