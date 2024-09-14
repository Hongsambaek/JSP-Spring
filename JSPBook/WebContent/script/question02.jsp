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
						<div class="table-responsive">
							<caption>앞(SEM PC 자리)</caption>
							<table class="table table-bordered" style="text-align:center; font-size:24px;">
								<tr height="80px">
									<td width="10%"></td>
									<td width="10%">정준하</td>
									<td width="10%">노홍철</td>
									<td width="10%">박나래</td>
									<td width="20%"></td>
									<td width="10%">전현무</td>
									<td width="10%">유재석</td>
									<td width="10%">길성준</td>
									<td width="10%">하하</td>
								</tr>
								<tr height="80px">
									<td>김연아</td>
									<td>김희선</td>
									<td>손연재</td>
									<td>박명수</td>
									<td></td>
									<td>아이유</td>
									<td>홍길동</td>
									<td>홍길순</td>
									<td>김철수</td>
								</tr>
								<tr height="80px">
									<td>데프콘</td>
									<td>강호동</td>
									<td>이승기</td>
									<td>박상민</td>
									<td></td>
									<td>김영철</td>
									<td>서장훈</td>
									<td>민경훈</td>
									<td></td>
								</tr>
								<tr height="80px">
									<td>김은태</td>
									<td>대장금</td>
									<td>홍해인</td>
									<td>백현우</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</div>
						<p id="count"></p>
						<h4 id="process"></h4>
						<hr/><br/>
						
						<button type="button" class="btn btn-primary" id="clickBtn">출력</button>
						<br/>
						<div id="output"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	let m1 = null;
	let m2 = null;
	
	$("td").on("click", function(){
		
		if($(this).text() == ""){	
			$("#process").html('<span style="color:red">빈 공간은 클릭할 수 없습니다!</span>');
			return;
			
		}
			
		if(m1 == null) {			
			m1 = $(this);
			m1.css("backgroundColor", 'yellow');
			$("#process").text(m1.text() + "님과");
		} else if(m2 == null){			
			m2 = $(this);
			m2.css("backgroundColor", 'yellow');
			$("#process").text(m1.text() + "님과 " + m2.text() + "님을 변경합니다.")
		
		let m3 = m1.text();
		m1.text(m2.text());
		m2.text(m3);
		
		m1.css("backgroundColor", 'white')
		m2.css("backgroundColor", 'white')
		
		m1 = null;
		m2 = null;
		} 
	})
	
	$("#clickBtn").on('click',function(){
		
		$(".table").clone().appendTo('#output');
		
		var tds = $("#output").find("td");
		for(var i = 0; i < tds.length; i++) {
			var s = tds[i].innerText;
			if(s == '김은태') {
				tds[i].style.color = 'blue';
			}
		}
		
	});
});
	
</script>
</body>
</html>