package kr.or.ddit.ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 *  필터 (Filter)
 *  
 *  필터는 클라이언트와 서버 사이에서 request 와 response 객체를 먼저 받아 사전/사후 작업 등 공통적으로 필요한 부분을 처리하는 것을 말한다.
 *  필터는 클라이언트의 요청이 웹 서버의 서블릿, JSP, HTML 페이지 같은 정적 리소스에 도달하기 전과, 반대로 정적 리소스에서 클라이언트로 응답하기 전에 필요한
 *  전처리를 가능하게 합니다.
 *  필터는 HTTP 요청과 응답을 변경할 수 있는 코드로 재사용이 가능하고 여러 개의 필터로 이루어진 필터 체인을 제공하기도 합니다.
 *  필터를 구성하기 위해서는 제일먼저 Filter 인터페이스가 필요한데 필터 기능을 구현하는데 핵심적은 역할을 합니다.
 */
public class AuthenFilter implements Filter {
	
	// init() 메소드는 JSP 컨테이너가 필터를 초기화 할 때 호출되는 메소드
	// init() 메소드는 JSP 컨테이너 내에서 초기화 작업을 수행할 때 필터 인스턴스를 생성한 후 한번만 호출됨
	// 매개변수 FilterConfig 객체는 JSP 컨테이너가 초기화 중 필터에 정보를 전달하는데 사용하는 필터 구성 객체
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("Filter01 초기화....!");
		
	}
	
	// doFilter() 메소드는 JSP 컨테이너가 필터를 리소스에 적용할 때마다 호출되는 메소드
	// 필터가 어떤 기능을 수행할 필요가 있을때마다 호출됨..
	// doFilter() 메소드의 매개변수는 총 3가지로 ServletRequest 객체는 체인을 따라 전달하는 요청이고,
	// ServletResponse 객체는 체인을 따라 전달할 응답이다. FilterChain 객체는 체인에서 다음 필터를 호출하는데 사용되고,
	// 만약 호출 필터가 체인의 마지막 필터이면 체인의 끝에서 리소스를 호출합니다.
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter01.jsp 수행...!");
		
		// AuthenFilter 동작 시나리오
		// input 요소의 name이라는 키를 갖고 있는 값을 목적지 타겟으로 넘깁니다.
		// 이때, name이라는 키를 갖고 있는 input 요소의 값이 입력되지 않은 상태로 넘어온 경우
		// '입력된 name값은 null입니다. 다시 입력해주세요!' 라는 메시지를 출력하고 다시 입력 페이지로 이동할 수 있도록 제공
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		// 이름을 입력받고 서버로 넘어오는 과정에서 해당 필터가 요청을 잡는다.
		// 이때, name 키에 들어있는 값이 null 또는 공백인 경우 필터가 브라우저로 메세지를 출력하여 돌려보냅니다.
		// "너 입력 안했어! 다시 보내!" 라고 하며 돌려보냅니다.
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter pw = response.getWriter();
			String msg = "<p>입력된 name값은 null입니다. 다시 입력해주세요!</p>";
			msg += "<a href='filter01.jsp'>Filter01 이동</a>";
			pw.println(msg);
			return;	// 요청 URL로 넘어가지 않고 해당 필터에서 응답 페이지가 결과로 나간다.
		}
		// 연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 FilterChain 객체 타입의 doFilter() 메소드를 작성한다.
		chain.doFilter(request, response);
	}
	
	// destroy() 메소드는 필터 인스턴스를 종료하기 전에 호출되는 메소드
	// JSP 컨테이너가 필터 인스턴스를 삭제하기 전에 청소 작업을 수행하는데 사용되며, 이는 필터로 열린 리소스를 모두 닫을 수 있는 방법입니다.
	// destroy() 메소드는 필터의 수명 동안 한번만 호출됩니다.
	@Override
	public void destroy() {
		System.out.println("Filter01 해제...!");
		
	}

}













