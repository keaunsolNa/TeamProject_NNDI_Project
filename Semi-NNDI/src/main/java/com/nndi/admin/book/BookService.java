package com.nndi.admin.book;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.BookInfoDTO;

public class BookService {
	
	private BookMapper mapper;

	/* 도서 리스트 전체 조회 */
	public List<BookInfoDTO> selectAllBookList() {
		
		System.out.println("서비스 도착");
			
		SqlSession sqlSession = getSqlSession();
			
		mapper = sqlSession.getMapper(BookMapper.class);
			
		List<BookInfoDTO> bookList = mapper.selectAllBookList();
			
		System.out.println("Service : " + bookList);
			
		return bookList;
		}
	
	/* 폐기 도서 리스트 전체 조회 */
	public List<BookInfoDTO> selectDeleteBookList() {
		
		System.out.println("서비스 도착");
		
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BookMapper.class);
	
		List<BookInfoDTO> deleteBookList = mapper.selectDeleteBookList();
		
		System.out.println("Service : " + deleteBookList);
		
		return deleteBookList;
	}

	/* 도서 폐기 전환 */
	public int updateBookSearchYn(int code) {
		System.out.println("서비스 도착");
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.UpdateBook(code);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		
		return result;
	}

	/* 폐기 도서 전환 */
	public int updateBookSearchYnReturn(int code) {
		System.out.println("서비스 도착");
		SqlSession sqlSession = getSqlSession();
		
		mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.UpdateBookReturn(code);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		
		return result;
	}

}
