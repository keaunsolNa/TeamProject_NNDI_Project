package com.nndi.client.board;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.QnaDTO;

public interface QNABoardDAO {

	/* 문의글 작성하기 */
	public int insertqna(QnaDTO qnadto);

	/* 문의글 수정하기 */
	public int QNAUpdateDAO(QnaDTO qnadto);

	public int QNAdelete(QnaDTO qnadto);


}
