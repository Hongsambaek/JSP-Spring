package kr.or.ddit.ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminAuthenFilter implements Filter {
	
	private FilterConfig filterConfig = null;
	
	@Override
	public void destroy() {
		System.out.println("AdminAuthenFilter...! 해제");

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("AdminAuthenFilter...! 수행");
		request.setCharacterEncoding("UTF-8");		
		
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;
		String id = httpReq.getRemoteUser();

		String param1 = filterConfig.getInitParameter("param1");
			
		String msg = "";
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		if(id.equals(param1)) {
			msg = id;
			request.setAttribute("msg", msg);
			
		} else {
			httpResp.sendRedirect("/ch12/ch12_test_adFail.jsp");
		}
				
		chain.doFilter(request, response);

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("AdminAuthenFilter...! 초기화");
		System.out.println(filterConfig.getInitParameter("param1"));
		
		this.filterConfig = filterConfig;

	}
}
