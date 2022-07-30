package com.nndi.client.member_info.myborad;

import static com.nndi.common.config.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nndi.model.commondto.BoardDTO;

public class MyboardService {
	
	private static MyComplainBoardMapper myboardMapper;

	public static List<BoardDTO> selectMyBoardList(String login) {
		
		SqlSession sqlSession = getSqlSession();
		
		myboardMapper = sqlSession.getMapper(MyComplainBoardMapper.class);
		
		List<BoardDTO> boardList = myboardMapper.selectMyBoardList(login);
		
		sqlSession.close();
		
		return boardList;
	}

}
