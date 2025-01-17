<%@page import="java.util.ArrayList"%>
<%@page import="vo.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
	// 상품 id를 얻어오기
	String id = request.getParameter("id");
	
	// 상품 id가 존재하지 않는 경우, 상품 목록 화면으로 이동
	if(id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	
	// 상품 id로 조회
	Product product = dao.getProductById(id);
	
	if(product == null) {
		response.sendRedirect("exceptionNoProductId");
	}
	
	// 기존에 상품을 주문할 때 담았던 장바구니 공간(세션)
	ArrayList<Product> list =(ArrayList<Product>) session.getAttribute("cartList");
	if(list == null){
		list = new ArrayList<Product>();
		session.setAttribute("cartList", list);
	}
		
	// 세션에서 얻어온 cartList에서 index에 해당하는 Product를 꺼내 goodsQnt 변수에 주소전달
	// 그 주소에 같은 상품일 경우 수량만 카운팅해서 셋팅'
	int cnt = 0;
	for(int i = 0; i < list.size(); i++) {
		Product goodsQnt = list.get(i); // 장바구니 안에 들어있는 상품
		if(goodsQnt.getProductId().equals(id)){
			cnt++;
			goodsQnt.setQuantity(goodsQnt.getQuantity() + 1);
		}
	}
	
	// 첫 상품을 주문할 경우
	if(cnt == 0) {
		product.setQuantity(1);
		list.add(product);
	}
	
	response.sendRedirect("product.jsp?id=" + id);
	
%>