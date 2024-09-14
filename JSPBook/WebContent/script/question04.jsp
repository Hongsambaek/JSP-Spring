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
							<table width="100%" border="1" style="text-align:center; font-size:24px;">
								<tr width="100%" height="80px">
									<td width="10%">김동윤</td>
									<td width="10%">김환용</td>
									<td width="10%">금서윤</td>
									<td width="10%">이슬미</td>
									<td width="20%"></td>
									<td width="10%">김현수</td>
									<td width="10%">이홍석</td>
									<td width="10%">김선경</td>
									<td width="10%"></td>
								</tr>
								<tr height="80px">
									<td>김동영</td>
									<td>이창은</td>
									<td>조서연</td>
									<td>조민지</td>
									<td></td>
									<td>김진원</td>
									<td>백지열</td>
									<td>이채민</td>
									<td>이채은</td>
								</tr>
								<tr height="80px">
									<td>장성훈</td>
									<td>박상현</td>
									<td>강미정</td>
									<td>김성재</td>
									<td></td>
									<td>박정현</td>
									<td>이원우</td>
									<td>김현경</td>
									<td>박신애</td>
								</tr>
								<tr height="80px">
									<td>이다예</td>
									<td>도명환</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
							<hr/>
							<div class="progress" style="height: 40px;">
								<div class="progress-bar progress-bar-striped" id="myBar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 1px; height: 40px;">
									<span class="sr-only">60% Complete</span>
								</div>
							</div>
							<br/>
							<h4 id="txt"></h4>
							<button type="button" style="padding:12px;border:none;cursor:pointer;">출력</button>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

let tds = $('td');

// let btn = $('button')

$(document).ready(function(){
	console.log(tds);
	
	for(let i = 0; i < tds.length; i++){
		console.log();
	}
	
	let progress = 0;
	let interval;
	
	
	
	$('button').on('click', function(){
		
		clearInterval(interval);
		
		progress = 0;
		$('#myBar').css('width', progress + '%');
		$('#txt').text(progress + '%');
		
		interval = setInterval(function(){
			if(progress < 100) {
			   progress += 1;
			   $('#myBar').css('width', progress + '%');
			   $('#txt').text(progress + '%');
			} else {
				clearInterval(interval);
			}
		}, 70)
	});
});
	
	
</script>
<!-- 
	프로그레스바 % 증가 이벤트 
	스타일 요소의 width를 증가시켜주면 됨.
	.css("width", "100");
	.style.width = 100;
-->
</html>