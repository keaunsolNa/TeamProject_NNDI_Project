package com.nndi.admin.book;

import java.util.List;

import com.nndi.model.commondto.BookInfoDTO;

public interface BookMapper {

	/* 도서 리스트 전체 조회 */
	List<BookInfoDTO> selectAllBookList();
	
	/* 폐기 도서 리스트 전체 조회 */
	List<BookInfoDTO> selectDeleteBookList();

	/* 도서 조회 가능 여부(폐기) 업데이트 */
	int UpdateBook(int code);

	/* 폐기 도서 업데이트 */
	int UpdateBookReturn(int code);
}
