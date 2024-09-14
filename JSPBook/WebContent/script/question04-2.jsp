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
							<table class="table table-bordered text-center" style="font-size:24px;">
								<tr width="100%" height="80px">
									<td width="10%">강성연</td>
									<td width="10%">김필거</td>
									<td width="10%">김수연</td>
									<td width="10%">이영준</td>
									<td width="20%"></td>
									<td width="10%">정현영</td>
									<td width="10%">최동재</td>
									<td width="10%">나성훈</td>
									<td width="10%">황현준</td>
								</tr>
								<tr height="80px">
									<td>이건우</td>
									<td>이은재</td>
									<td>김연희</td>
									<td>김예지</td>
									<td></td>
									<td>김선영</td>
									<td>권기혁</td>
									<td>박범진</td>
									<td>박민수</td>
								</tr>
								<tr height="80px">
									<td>박병준</td>
									<td>이현수</td>
									<td>윤다빈</td>
									<td>김민강</td>
									<td></td>
									<td>이동형</td>
									<td>박현진</td>
									<td>김용주</td>
									<td>문형석</td>
								</tr>
								<tr height="80px">
									<td></td>
									<td>임효정</td>
									<td>정문성</td>
									<td>김은태</td>
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
							<h4 id="txt" style="font-size: 16px;"></h4>
							<button type="button" onclick="SeatMoveEvent()" style="padding:12px;border:none;cursor:pointer;">출력</button>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
<script type="text/javascript">
//학생 랜덤 추첨기 만들어보기
//var i = 0;
var myArray = [ "강성연", "김필거", "김수연", "이영준", "정현영", "최동재", "나성훈", "황현준",
		"이건우", "이은재", "김연희", "김예지", "김선영", "권기혁", "박범진", "박민수", "박병준",
		"이현수", "윤다빈", "김민강", "이동형", "박현진", "김용주", "문형석", "임효정", "정문성", "김은태" ];

var cnt = 0;		// myArray에서 이름을 꺼낼때 사용하는 index
var seat = 0;		// show를 위한 index(td에 index를 배정할 때)
var elem;
var seatMove;
var width = 0;

var td = $("td");
var txt = $("#txt");

function SeatMoveEvent() {
	elem = document.getElementById("myBar");
	seatMove = setInterval(move, 100);
}
function move() {
	td.css("background-color", "white");	// 처음에 선택된 자리를 흰색으로 초기화
	if (width >= 100) {	// 프로그레스바 100% 도달!
		cnt = Math.floor(Math.random() * myArray.length);	// 0~학생 수
		// 학생 이름이 들어있는 배열 공간에서 결정된 index 값을 넣어 선택된 학생의 이름 꺼내기
		txt.html(myArray[cnt]);	// 결과 출력
		
		var tds = document.getElementsByTagName("td");
		for(var j = 0; j < tds.length; j++){
			if(tds[j].innerText == myArray[cnt]){	// 테이블 td의 이름과 이름집합 배열의 이름이 같을때
				tds[j].style.backgroundColor = "yellow";	// 최종 선택된 학생의 이름에 노란색 보여
			}
		}
		
		clearInterval(seatMove);	// setInterval 이벤트 종료
		width = 0;
		elem = null;
		seatMove = null;
	} else {	// 프로그레스바가 100%를 달성하기까지의 show
		// Math.floor : 반올림하여 주어진 숫자보다 작거나 같은 가장 큰 정수
		seat = Math.floor(Math.random() * 36);	// 0~자리 수
		
		console.log(cnt + " : " + seat);
		$("td:eq("+seat+")").css("background-color", "yellow");
		
		width++;	// 프로그레스바 증가
		elem.style.width = width + "%";
		elem.innerHTML = width + "%";
		
		if(width == 10)
			txt.html("※ Creating system logs.");
		if(width == 12)
			txt.html("※ A system log is being created.");
		if(width == 14)
			txt.html("※ We are in the process of setting up system log output.");
		if(width == 16)
			txt.html("※ Setting up for system log output...");
		if(width == 18)
			txt.html("※ System log output settings completed");
		if(width == 20)
			txt.html("※ The system is selecting students.");
		if(width == 22)
			txt.html("※ The system is placing students.");
		if(width == 24)
			txt.html("※ Positions are being selected based on the students placed.");
		if(width == 26)
			txt.html("※ After selecting seats, we are mapping the classes and preparing to relocate students after mapping is completed.");
		if(width == 28)
			txt.html("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 30)
			txt.html("■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 32)
			txt.html("■■■■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 34)
			txt.html("■■■■■■■■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 35)
			txt.html("■■■■■■■■■■■■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 36)
			txt.html("■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 38)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 40)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□□□□□□□□□□□□□□□□□□");
		if(width == 42)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□□□□□□□□□□□□□");
		if(width == 43)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□□□□□□□□");
		if(width == 44)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□□□□");
		if(width == 46)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□□□□□");
		if(width == 48)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■□□□□□");
		if(width == 50)
			txt.html("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Complete!");
		if(width == 52)
			txt.html("※ Once placement is complete, students will be verified.");
		if(width == 54)
			txt.html("※ Verification complete!");
		if(width == 56)
			txt.html("※ The system is setting a random function");
		if(width == 58)
			txt.html("※ The system is testing by outputting random numbers based on a random function.");
		if(width == 60)
			txt.html("※ Test completed!");
		if(width == 65)
			txt.html("※ 시스템 설정 및 학생 배치가 완료 되었습니다! ");
		if(width == 70)
			txt.html("※ 시스템에서 배정한 랜덤 시스템을 가동중입니다....!");
		if(width == 80)
			txt.html("※ 랜덤 시스템이 학생을 선정하였습니다!");
		if(width == 90)
			txt.html("※ 선정된 학생을 출력 하기 위해 준비중입니다!");
		if(width == 95)
			txt.html("※ 시스템 안정화중...!");
	}
}
</script>
</html>