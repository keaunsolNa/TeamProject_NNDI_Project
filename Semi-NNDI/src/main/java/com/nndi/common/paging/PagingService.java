package com.nndi.common.paging;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.nndi.client.classes.ClassListDAO;
import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.BookInfoDTO;
import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public class PagingService {

	private PagingMapper mapper;
	
	/* 강좌 전체 게시글 수 조회 */
	public int selectClassTotalCount(Map<String, String> searchMap) {
		
		SqlSession sqlSession = getSqlSession();
		
		mapper =  sqlSession.getMapper(PagingMapper.class);
		
		int totalCount = mapper.selectClassTotalCount(searchMap);
		
		sqlSession.close();
		
		return totalCount;
	}

	public Map<String, List<ClassesAndTeacherAndCenterDTO>> ClassList(PagingDTO pagingDTO) {
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(PagingMapper.class);
		
		List<ClassesAndTeacherAndCenterDTO> classdto = mapper.selectClassList(pagingDTO);		//신청가능 강좌 목록
		List<ClassesAndTeacherAndCenterDTO> classdto2 = mapper.ClassOffList(); 					//신청 불가 강좌 목록
		
		Map<String, List<ClassesAndTeacherAndCenterDTO>> classList = new HashMap<String, List<ClassesAndTeacherAndCenterDTO>>();
		
		classList.put("possibleCls", classdto);
		classList.put("impossibleCls", classdto2);
		
		
		return classList;
	}


}
