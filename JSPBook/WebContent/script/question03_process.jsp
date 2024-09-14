<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                        <h1 class="page-title">JSP 개요</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH01</li>
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
						<%
							request.setCharacterEncoding("UTF-8");
							String dataArr = request.getParameter("dataArr");
							String countArr = request.getParameter("countArr");
							
							String[] datas = dataArr.split(",");
							String[] counts = countArr.split(",");
						%>
						
						<c:set value="<%=datas %>" var="datas"/>
						<c:set value="<%=counts %>" var="counts"/>
						
						<div class="row">
							<div class="col-md-4">
								<div class="card">
									<div class="card-header card-primary">
										주문표
									</div>
									<div class="card-body">
									
										<table class="table table-bordered">
											<tr>
												<th>음료</th>
												<th>가격</th>
												<th>수량</th>
											</tr>
											<c:forEach items="${datas }" var="data" varStatus="vs">
											<tr>
												<td>${fn:split(data, "_")[0] }</td>
												<td>${fn:split(data, "_")[1] }</td>
												<td>${counts[vs.index] }</td>
											</tr>
											</c:forEach>									
										</table>
									</div>
								</div>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>