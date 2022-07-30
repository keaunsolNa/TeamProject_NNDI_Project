package com.nndi.client.book;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.admin.book.BookMapper;
import com.nndi.common.paging.PagingMapper;
import com.nndi.model.commondto.BookInfoDTO;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public class ClientBookService {

	private ClientBookMapper mapper;
	
	public List<BookInfoDTO> selectAllBookList() {

		System.out.println("서비스 도착");
			
		SqlSession sqlSession = getSqlSession();
			
		mapper = sqlSession.getMapper(ClientBookMapper.class);
			
		List<BookInfoDTO> bookList = mapper.selectAllBookList();
			
		System.out.println("Service : " + bookList);
			
		return bookList;
		
		}

		/*
		 * public int selectBookTotalCount() {
		 * 
		 * SqlSession sqlSession = getSqlSession();
		 * 
		 * mapper = sqlSession.getMapper(ClientBookMapper.class);
		 * 
		 * // int totalCount = mapper.selectBookTotalCount();
		 * 
		 * System.out.println("Service에서 조회한 Class의 전체 게시글 수 조회: " + totalCount);
		 * 
		 * sqlSession.close();
		 * 
		 * return totalCount; }
		 */

		/*
		 * public List<BookInfoDTO> selectBookList(PagingDTO pagingDTO) {
		 * 
		 * SqlSession sqlSession = getSqlSession();
		 * 
		 * mapper = sqlSession.getMapper(ClientBookMapper.class);
		 * 
		 * List<BookInfoDTO> bookList = mapper.selectBookList(pagingDTO);
		 * 
		 * sqlSession.close();
		 * 
		 * return bookList; }
		 */

}
