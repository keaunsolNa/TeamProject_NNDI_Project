package com.nndi.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.nndi.common.wrapper.RequestWrapper;


@WebFilter("/Account/*")
public class EncryptFilter implements Filter {

    public EncryptFilter() {
    }
	
		public void destroy() {
		}

		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
			HttpServletRequest hrequest = (HttpServletRequest) request;
			RequestWrapper wrapper = new RequestWrapper(hrequest);
		
			chain.doFilter(wrapper, response);

		}

		public void init(FilterConfig fConfig) throws ServletException {
		}

}
