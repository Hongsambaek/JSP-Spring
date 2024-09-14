<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta naCntme="description" content="" />
    <meta naCntme="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="/pageModule/headPart.jsp" %>
</head>
<body>
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">JSP 개요</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-naCntv">
                        <li><a href="/">INDEX</a></li>
                        <li>CH17</li>
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
						<!-- 
							문제) 306호 학생들의 각 성씨에 따른 인원수는 각각 몇명인지 작성해주세요.
							
							예)----------------------------
							'홍'씨 성을 가진사람 : 00명
							'유'씨 성을 가진사람 : 00명
							'정'씨 성을 가진사람 : 00명
							'이'씨 성을 가진사람 : 00명
							'박'씨 성을 가진사람 : 00명
							'조'씨 성을 가진사람 : 00명
							...
							
							1. JSTL을 이용하여 작성해주세요.
							2. 학생의 이름을 넣는건 자유롭게 넣어주세요.
							 - 스크립틀릿으로 넣고 JSTL로 옮겨도 되고, JSTL로 직접 넣어도 되고 자유!
						 -->
						<c:set value="강성연, 김필거, 김수연, 이영준, 이건우, 이은재, 김연희, 김예지, 박병준, 이현수, 윤다빈, 김민강, 임효정, 정문성, 김은태, 정현영, 최동재, 나성훈, 황현준, 김선영, 권기혁, 박범진, 박민수, 이동형, 문형석, 박현진, 김용주" var="students"/>													
						<h2>최종 집계 결과</h2>
						<hr>
						전체학생:<br> <c:out value="${students }"/>
						<hr>
						
						<c:set value="${fn:split(students, ', ')}" var="names"/>
						
						<c:set value="0" var="kimCnt"/>
						<c:set value="0" var="parkCnt"/>
						<c:set value="0" var="joCnt"/>
						<c:set value="0" var="jeongCnt"/>
						<c:set value="0" var="moonCnt"/>
						<c:set value="0" var="hwangCnt"/>
						<c:set value="0" var="limCnt"/>
						<c:set value="0" var="choiCnt"/>
						<c:set value="0" var="naCnt"/>
						
						<c:forEach items="${names }" var="nm" varStatus="stat">
							<c:choose>
								<c:when test="${fn:substring(nm, 0, 1) eq '김' }">
									<c:set value="${kimCnt + 1 }" var="kimCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '박' }">
									<c:set value="${parkCnt + 1 }" var="parkCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '조' }">
									<c:set value="${joCnt + 1 }" var="joCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '정' }">
									<c:set value="${jeongCnt + 1 }" var="jeongCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '문' }">
									<c:set value="${moonCnt + 1 }" var="moonCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '황' }">
									<c:set value="${hwangCnt + 1 }" var="hwangCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '임' }">
									<c:set value="${limCnt + 1 }" var="limCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '최' }">
									<c:set value="${choiCnt + 1 }" var="choiCnt"/>
								</c:when>
								<c:when test="${fn:substring(nm, 0, 1) eq '나' }">
									<c:set value="${naCnt + 1 }" var="naCnt"/>
								</c:when>
							</c:choose>
						</c:forEach>
						<table class="table table-bordered text-center">						
							<tr>								
								<td>김</td>
								<td>박</td>
								<td>조</td>
								<td>정</td>
								<td>문</td>
								<td>황</td>
								<td>임</td>
								<td>최</td>
								<td>나</td>
							</tr>
							<tr>
								<td><c:out value="${kimCnt }"/></td>
								<td><c:out value="${parkCnt }"/></td>
								<td><c:out value="${joCnt }"/></td>
								<td><c:out value="${jeongCnt }"/></td>
								<td><c:out value="${moonCnt }"/></td>
								<td><c:out value="${hwangCnt }"/></td>
								<td><c:out value="${limCnt }"/></td>
								<td><c:out value="${choiCnt }"/></td>
								<td><c:out value="${naCnt }"/></td>
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