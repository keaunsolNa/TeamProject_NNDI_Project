package com.nndi.client.book;

import java.util.List;

import com.nndi.model.commondto.BookInfoDTO;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

public interface ClientBookMapper {

	List<BookInfoDTO> selectAllBookList();


}
