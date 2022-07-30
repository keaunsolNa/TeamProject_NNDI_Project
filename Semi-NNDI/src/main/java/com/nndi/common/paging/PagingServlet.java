package com.nndi.common.paging;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.Pagenation;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/board/paging")
public class PagingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("페이징 처리 Servlet 출발 확인");
		
		String currentPage = request.getParameter("currentPage");
		System.out.println("서블릿에서 전달받은 currentPage 확인: " + currentPage);
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		System.out.println("Servlet에서 지정한 Map: " + searchMap);
		
		PagingService pagingService = new PagingService();
		int totalCount = pagingService.selectClassTotalCount(searchMap);
		
		System.out.println("Servlet에서 지정한 totalCount" + totalCount);
		
		int limit = 8;
		int buttonAmount = 5;
		
		PagingDTO PagingDTO = null;
		
		if(searchCondition != null && !"".equals(searchCondition)) {
			PagingDTO = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			PagingDTO = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println("Service 처리 전 초기화 DTO 값 : " + PagingDTO);
		
		
		Map<String,List<ClassesAndTeacherAndCenterDTO>> classList = pagingService.ClassList(PagingDTO);
		System.out.println("dto 확인용 "+ classList);
		
		List<ClassesAndTeacherAndCenterDTO> possibleCls =  classList.get("possibleCls");
		List<ClassesAndTeacherAndCenterDTO> impossibleCls = classList.get("impossibleCls");
		
		/* 신청가능 강좌 목록 개강, 종강일 */
		List<Map<String, String>> time1 = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(ClassesAndTeacherAndCenterDTO ctc : possibleCls) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format( ctc.getClsStartDay()));
			map.put("end", sdf.format(ctc.getClsEndDay()));
			time1.add(map);
		}
		
		/* 신청불가 강좌 목록 개강, 종강일 */
		List<Map<String, String>> time2 = new ArrayList<>();
		for(ClassesAndTeacherAndCenterDTO ctc : impossibleCls) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format(ctc.getClsStartDay()));
			map.put("end", sdf.format( ctc.getClsEndDay()));
			time2.add(map);
		}
		
		System.out.println("Service 처리 후 초기화 DTO 값 : " + classList);
		
		String path = "";
		if(classList != null) {
			
			path = "/WEB-INF/views/client/classes/QNAClassList.jsp";
			request.setAttribute("possibleCls", possibleCls);
			request.setAttribute("time1", time1);
			request.setAttribute("impossibleCls", impossibleCls);
			request.setAttribute("time2", time2);
			request.setAttribute("PagingDTO", PagingDTO);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
