<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="/pageModule/headPart.jsp" %>
</head>
<body>
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">내장객체</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH05</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
						<!-- 내용을 입력해주세요 -->
						<table class="table table-bordered">
							<tr>
								<th></th>
								<td>값</td>
								<td>설명</td>
							</tr>
							<tr>
								<th width="20%">클라이언트 IP</th>
								<td width="20%"><%=request.getRemoteAddr() %></td>
								<td width="60%">웹 브라우저의 IP 주소를 가져옵니다</td>
							</tr>
							
							<tr>
								<th>요청 정보 길이</th>
								<td><%=request.getContentLength() %></td>
								<td>웹 브라우저의 요청 파라미터 길이를 가져옵니다</td>
							</tr>
							
							<tr>
								<th>요청 정보 인코딩</th>
								<td><%=request.getCharacterEncoding() %></td>
								<td>웹 브라우저의 문자 인코딩을 가져옵니다</td>
							</tr>
							
							<tr>
								<th>요청 정보 컨텐츠 유형</th>
								<td><%=request.getContentType() %></td>
								<td>웹 브라우저의 콘텐츠 유형을 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>요청 정보 프로토콜</th>
								<td><%=request.getProtocol() %></td>
								<td>웹 브라우저의 요청 프로토콜을 가져옵니다</td>
							</tr>
							
							<tr>
								<th>요청 정보 전송방식</th>
								<td><%=request.getMethod() %></td>
								<td>웹 브라우저의 HTTP 요청 메소드(GET, POST)를 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>요청 URL</th>
								<td><%=request.getRequestURL() %></td>
								<td>웹 브라우저가 요청한 URL경로를 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>요청 URI</th>
								<td><%=request.getRequestURI() %></td>
								<td>웹 브라우저가 요청한 URI경로를 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>컨텍스트 경로</th>
								<td><%=request.getContextPath() %></td>
								<td>현재 JSP페이지의 웹 애플리케이션 컨텍스트 경로를 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>서버이름</th>
								<td><%=request.getServerName() %></td>
								<td>현재 서버 이름을 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>서버포트</th>
								<td><%=request.getServerPort() %></td>
								<td>실행중인 서버 포트번호를 가져옵니다.</td>
							</tr>
							
							<tr>
								<th>쿼리문(QueryString)</th>
								<td><%=request.getQueryString() %></td>
								<td>웹 브라우저의 전체 요청 파라미터 문자열[물음표(?) 다음 URL에 할당한 문자열]을 가져옵니다.</td>
							</tr>
							
						</table>
						
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>