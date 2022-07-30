package com.nndi.client.member_info.myborad;

import java.util.List;

import com.nndi.model.commondto.BoardDTO;

public interface MyComplainBoardMapper {

	List<BoardDTO> selectMyBoardList(String login);

}
