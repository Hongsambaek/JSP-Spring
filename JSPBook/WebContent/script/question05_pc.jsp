<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Board List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<style>
.pc td {
	height: 100px;
	padding-top: 24px;
}
</style>
<body>
	<!-- 
		피시방 사장이 되어, 손님을 받는다.
		1) 손님이 이용할 PC를 선택하고 이름, 이용시간을 설정 후 등록을 진행한다.
			> 이때, 이용 시간으로 설정되어 있는 시간만큼 타이머가 해당 PC자리에 설정된다.
		2) 이용중인 PC를 종료 버튼을 클릭 하면 타이머가 설정되어 있는 PC가 종료되고
			아래 매출현황에 이용시간 만큼의 매출이 기록된다.
		
		*** 손님을 받을 때마다 PC 이용 현황판은 이용 시간만큼 타이머가 동시에 동작해야한다.
	 -->
	<div class="container">
		<h3 class="mt-3">피시방 카운터</h3>
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header"></div>
					<div class="card-body">
						<table class="table table-bordered">
							<tr>
								<td width="30%">PC번호</td>
								<td id="pcNo">PC를 선택해주세요.</td>
							</tr>
							<tr>
								<td>이름</td>
								<td id="pcUser"><input type="text" class="form-control" id="userName"/></td>
							</tr>
							<tr>
								<td>시간</td>
								<td id="pcTime"><input type="number" class="form-control" id="useTime" min="1" max="12"/></td>
							</tr>
						</table>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-primary" id="addBtn">등록</button>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<table class="table table-bordered pc">
					<tr align="center">
						<td data-ord="1">PC-1</td>
						<td data-ord="2">PC-2</td>
						<td data-ord="3">PC-3</td>
						<td data-ord="4">PC-4</td>
						<td data-ord="5">PC-5</td>
						<td data-ord="6">PC-6</td>
						<td data-ord="7">PC-7</td>
						<td data-ord="8">PC-8</td>
					</tr>
					<tr align="center">
						<td data-ord="9">PC-9</td>
						<td data-ord="10">PC-10</td>
						<td data-ord="11">PC-11</td>
						<td data-ord="12">PC-12</td>
						<td data-ord="13">PC-13</td>
						<td data-ord="14">PC-14</td>
						<td data-ord="15">PC-15</td>
						<td data-ord="16">PC-16</td>
					</tr>
					<tr align="center">
						<td data-ord="17">PC-17</td>
						<td data-ord="18">PC-18</td>
						<td data-ord="19">PC-19</td>
						<td data-ord="20">PC-20</td>
						<td data-ord="21">PC-21</td>
						<td data-ord="22">PC-22</td>
						<td data-ord="23">PC-23</td>
						<td data-ord="24">PC-24</td>
					</tr>
					<tr align="center">
						<td data-ord="25">PC-25</td>
						<td data-ord="26">PC-26</td>
						<td data-ord="27">PC-27</td>
						<td data-ord="28">PC-28</td>
						<td data-ord="29">PC-29</td>
						<td data-ord="30">PC-30</td>
						<td data-ord="31">PC-31</td>
						<td data-ord="32">PC-32</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">이용 안내</div>
					<div class="card-body">
						<ul>
							<li>1시간 이용 시 1,000원 입니다.</li>
							<li>이용 후, 의자를 꼭 넣어주세요.</li>
							<li>화장실은 입구 오른쪽 끝입니다.</li>
							<li>각 흡연실, 비흡연실 구역이 나뉘어져있습니다.</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">매출 현황</div>
					<div class="card-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>번호</th>
									<th>PC 번호</th>
									<th>이용 시간</th>
									<th>금액</th>
								</tr>
							</thead>
							<tbody id="resTbody">
							</tbody>
						</table>
					</div>
					<div class="card-footer">
						<h5>총 매출 : <font id="total"></font></h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>











