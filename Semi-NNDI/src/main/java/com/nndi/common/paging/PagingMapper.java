package com.nndi.common.paging;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public interface PagingMapper {

	int selectClassTotalCount(Map<String, String> searchMap);

	List<ClassesAndTeacherAndCenterDTO> selectClassList(PagingDTO pagingDTO);

	int selectBookTotalCount();

	List<ClassesAndTeacherAndCenterDTO> ClassOffList();

}
