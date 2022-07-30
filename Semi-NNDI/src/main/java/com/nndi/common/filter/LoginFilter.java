package com.nndi.common.filter;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/login/*")
public class LoginFilter implements Filter {

    public LoginFilter() {
    }

   public void destroy() {
   }

   
   
   /* loginSession의 "loginStatus" Attribute = 로그인 상태 값,
    * 0= "로그아웃 상태", 1 = "고객 로그인 상태", 2= "관리자 로그인 상태", 3="로그인 실패 상태, 4="권한 없이 로그인 시도했을 경우의 상태"
    */
   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
      
      HttpSession loginSession = ((HttpServletRequest) request).getSession();
      String path = "";
      
      System.out.println(loginSession.getAttribute("loginStatus"));
      
      if("".equals(loginSession.getAttribute("loginStatus")) || loginSession.getAttribute("loginStatus") == null || loginSession.getAttribute("loginStatus").equals(0) || loginSession.getAttribute("loginStatus").equals(4)) {
         System.out.println("권한부족 상태");
         path="/WEB-INF/views/common/login/UserLogin.jsp";
         request.setAttribute("loginStatus", 4);
         request.getRequestDispatcher(path).forward(request, response);
      } else if(loginSession.getAttribute("loginStatus").equals(3)) {
         System.out.println("로그인 실패 상태");
         path="/WEB-INF/views/common/login/UserLogin.jsp";
         request.getRequestDispatcher(path).forward(request, response);
      } else if(loginSession.getAttribute("loginStatus").equals(1)) {
         System.out.println("고객 로그인 상태");
         chain.doFilter(request, response);
      } else if(loginSession.getAttribute("loginStatus").equals(2)){
         System.out.println("관리자 로그인 상태");
         chain.doFilter(request, response);
         
      }
      
   }

   public void init(FilterConfig fConfig) throws ServletException {
   }

}