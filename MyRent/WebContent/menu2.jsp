<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu2.css">

<script>
	$(function() {

		$("input").change(function() {

			var d1 = $("#date1").val();
			var d2 = $("#date2").val();
			var d3 = $("#date3").val();
			var d4 = $("#date4").val();
			var d5 = $("#date5").val();
			var d6 = $("#date6").val();
			
			
			var month = $("#month").text();

			if ($("#date1").is(":checked")) {
				$("#datespan").val(month + " " + d1 + "일");
			}
			
			if ($("#date2").is(":checked")) {
				$("#datespan").val(month + " " + d2 + "일");
			}
			
			if ($("#date3").is(":checked")) {
				$("#datespan").val(month + " " + d3 + "일");
			}
			
			if ($("#date4").is(":checked")) {
				$("#datespan").val(month + " " + d4 + "일");
			}
			
			if ($("#date5").is(":checked")) {
				$("#datespan").val(month + " " + d5 + "일");
			}
			if ($("#date6").is(":checked")) {
				$("#datespan").val(month + " " + d6 + "일");
			}
			

		});
		
	
		

	});
</script>

</head>
<jsp:include page="topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">대 관 하 기</div>
	<div id="containerbody">
		<div>
			<ul id="sidemenu">
				<li><a href="javascript:location.reload();">대관 신청</a></li>
				<li><a href="rentlookup.jsp">신청 조회</a></li>
				<li><a href="rentcancel.jsp">신청 취소</a></li>
				<li><a href="rentcheck.jsp">결과 확인</a></li>
			</ul>
		</div>
		<div id="maintext">
			<br>
			<h1 style="color: #757575;">대관 신청</h1>
			<br> <br> <br> <br>



			<button class="btn btncalender">이전달</button>
			<b id="month">2018년 11월</b>
			<button class="btn btncalender">다음달</button>


			<div id="divtable">
				<form>
					<table style="text-align: center; border: 5px solid #dddddd">
						<thead>
							<tr>
								<th>일</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
								<th>토</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="radio" id="date1" name="calendar"
									value="1">1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
							</tr>
							<tr>
								<td><input type="radio" id="date2" name="calendar"
									value="2">2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td><input type="radio" id="date3" name="calendar"
									value="3">3</td>
								<td>3</td>
								<td>3</td>
								<td>3</td>
								<td>3</td>
								<td>3</td>
								<td>3</td>
							</tr>
							<tr>
								<td><input type="radio" id="date4" name="calendar"
									value="4">4</td>
								<td>4</td>
								<td>4</td>
								<td>4</td>
								<td>4</td>
								<td>4</td>
								<td>4</td>
							</tr>
							<tr>
								<td><input type="radio" id="date5" name="calendar"
									value="5">5</td>
								<td>5</td>
								<td>5</td>
								<td>5</td>
								<td>5</td>
								<td>5</td>
								<td>5</td>
							</tr>
							<tr>
								<td><input type="radio" id="date6" name="calendar"
									value="6">6</td>
								<td>6</td>
								<td>6</td>
								<td>6</td>
								<td>6</td>
								<td>6</td>
								<td>6</td>
							</tr>
						</tbody>

					</table>
					<div style="margin-bottom: 100px;">
						날짜 : <input id="datespan">&emsp;&emsp;
						
						공간 : <select name="room">
							<option value="">------공간 선택------</option>
							<option value="">합주실(소)</option>
							<option value="">합주실(대)</option>
							<option value="">커뮤니티 스튜디오</option>
							<option value="">999홀</option>
							<option value="">허브홀</option>
						</select>&emsp;&emsp;
						
						시간 : <select name="roomtime">
							<option value="">------시간 선택------</option>
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<input class="btn btncalender" type="submit" value="결정하기">
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>