<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu2.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	//Calendar 객체 생성하기
	var Calendar = new Date();
	var SubCalendar = new Date();

	var year = Calendar.getFullYear(); // 년도
	var month = Calendar.getMonth(); // 월   0~11
	var today = Calendar.getDate(); // 일 
	var weekday = Calendar.getDay(); // 요일 0~6

	function makeCalendar() {

		// getDay() 는 요일을 숫자로 반환한다
		// 일요일은 0 월요일은 1
		var day_of_week = [ "일", "월", "화", "수", "목", "금", "토" ];

		Calendar.setDate(1); // 달력은 1일부터 표시!
		SubCalendar.setMonth(10);
		SubCalendar.setFullYear(2018);

		var DAYS_OF_WEEK = 7; // 일주일은 7일

		// 그해 한 달의 마지막 일
		var DAYS_OF_MONTH = new Date(year, month, 0).getDate();

		$("#monthTitle").text(year + "년 " + (month + 1) + "월");

		var THEAD_start = "<thead>";
		var THEAD_end = "</thead>";

		// 행
		var TR_start = "<tr>";
		var TR_end = "</tr>";

		var TD_pass_start = "<td class='pass'>"
		var TD_week_start = "<td class='week'>"; // 월요일 ~ 일요일을 나타낼 td
		var TD_blank_start = "<td class=''blank>"; // blank (1일 이전의 빈칸)
		var TD_today_start = "<td class='tdtoday'>"; // 오늘 날짜
		var TD_day_start = "<td>"; // 평일
		var TD_saturday_start = "<td>";
		var TD_sunday_start = "<td>";
		var TD_end = "</td>";

		var DIV_today_start = "<div class='sptoday'>";
		var DIV_day_start = "<div class='day'>";
		var DIV_saturday_start = "<div class='saturday'>";
		var DIV_sunday_start = "<div class='sunday'>";
		var DIV_end = "</div>";

		var str = "";

		// 여기서부터 tr 시작
		// 일단 맨 첫줄을 요일을 나타내자
		str += THEAD_start;
		str += TR_start; // 요일

		for (var i = 0; i < DAYS_OF_WEEK; i++) {

			// day_of_week배열에 있는 [일 월 화 수 목 금 토]를 순서대로 td에 담음
			str += TD_week_start + day_of_week[i] + TD_end;
		}

		// 요일표시가 끝나고 다음 줄 작성
		str += TR_end;
		str += THEAD_end;

		// 1일이 시작하기 전까지 요일은 빈칸처리
		// 예를 들어 2018년 11월 이라고 했을 때
		// 11월은 1일이 목요일이다
		// 그러므로 1일 전인 일 월 화 수요일은 빈칸처리 해야하므로
		for (var i = 0; i < Calendar.getDay(); i++) {
			str += TD_blank_start + TD_end;
		}

		// 이제 1일부터 시작
		for (var i = 0; i < DAYS_OF_MONTH; i++) {

			// 11월 17일
			if (Calendar.getDate() > i) {

				var day_year = SubCalendar.getFullYear(); // 년
				var day_month = SubCalendar.getMonth(); // 월
				var day = Calendar.getDate(); // 날짜
				var week_day = Calendar.getDay(); // 요일
				var datevalue = year+"-"+(month+1)+"-"+day;

				var INPUT_room = "<span id='sp1'><input type='radio' name='roomselect' value='"+datevalue+"' class='room1'>합주실(소)</span><br>"
						+ "<span id='sp2'><input type='radio' name='roomselect' value='"+datevalue+"' class='room2'>합주실(대)</span><br>"
						+ "<span id='sp3'><input type='radio' name='roomselect' value='"+datevalue+"' class='room3'>커뮤니티</span><br>"
						+ "<span id='sp4'><input type='radio' name='roomselect' value='"+datevalue+"' class='room4'>999홀</span><br>"
						+ "<span id='sp5'><input type='radio' name='roomselect' value='"+datevalue+"' class='room5'>허브홀</span>";

				/* console.log("day" + day);
				console.log("today" + today);
				console.log("day_month" + day_month);
				console.log("month" + month);
				console.log("day_year" + day_year);
				console.log("year" + year); */

				// 일요일이면 tr로 한칸 내린다
				if (week_day == 0) {
					str += TR_start;
				}

				// 해당하는 달에서 지나간 날짜를 막음
				if (day < today && day_month == month && day_year == year) {

					str += TD_pass_start + TD_end;

					// 해당하는 달에서 지나간 달을 막음
				} else if (year == day_year && day_month > month) {
					str += TD_pass_start + TD_end;

					// 해당하는 달에서 지나간 년도를 막음
				} else if (day_year > year) {
					str += TD_pass_start + TD_end;

				}

				// 오늘 날짜
				else if (day == today && day_month == month && day_year == year) {

					str += TD_today_start + DIV_today_start + day + DIV_end
							+ INPUT_room + TD_end;
				}

				else {

					switch (week_day) {

					case 0: // 일요일

						str += TD_sunday_start + DIV_sunday_start + day
								+ DIV_end + INPUT_room + TD_end;

						break;

					case 6: // 토요일
						str += TD_saturday_start + DIV_saturday_start + day
								+ DIV_end + INPUT_room + TD_end;
						str += TR_end;
						break;

					default: // 평일
						str += TD_day_start + DIV_day_start + day + DIV_end
								+ INPUT_room + TD_end;
						break;
					}

				}

			}

			// 다음 날짜로 넘어간다
			Calendar.setDate(Calendar.getDate() + 1);

		}

		str += "</td></tr>";

		$("table").html(str);

	}

	$(function() {

		$("#btnback").click(function() {

			month--;
			Calendar = new Date(year, month, today);
			makeCalendar();

			if (month == -1) {

				year--;
				month = 11;
				Calendar = new Date(year, month, today);
				makeCalendar();

			}
		});

		$("#btngo").click(function() {

			if (month < 11) {
				month++;
				Calendar = new Date(year, month, today);
				makeCalendar();

			} else if (month == 11) {
				year++;
				month = 0;
				Calendar = new Date(year, month, today);
				console.log(month);
				makeCalendar();
			}

		});

		$("#radioButton").click(

				function() {

					if ($(".room1").is(":checked")) {

						var radioVal = $('input[name="roomselect"]:checked')
								.val();

						var spantext = $("#sp1").text();
						var roomNumber = 1;

						$("#roomId").val(roomNumber);
						$("#date").val(radioVal);
						$("#dateroom").val(radioVal + " 합주실(소)");

					} else if ($(".room2").is(":checked")) {

						var radioVal = $('input[name="roomselect"]:checked')
								.val();

						var spantext = $("#sp2").text();
						var roomNumber = 2;

						$("#roomId").val(roomNumber);
						$("#date").val(radioVal);
						$("#dateroom").val(radioVal + " 합주실(대)");

					} else if ($(".room3").is(":checked")) {
						var radioVal = $('input[name="roomselect"]:checked')
								.val();

						var spantext = $("#sp3").text();
						var roomNumber = 3;

						$("#roomId").val(roomNumber);
						$("#date").val(radioVal);
						$("#dateroom").val(radioVal + " 커뮤니티");

					} else if ($(".room4").is(":checked")) {
						var radioVal = $('input[name="roomselect"]:checked')
								.val();

						var spantext = $("#sp4").text();
						var roomNumber = 4;

						$("#roomId").val(roomNumber);
						$("#date").val(radioVal);
						$("#dateroom").val(radioVal + " 999홀");

					} else if ($(".room5").is(":checked")) {
						var radioVal = $('input[name="roomselect"]:checked')
								.val();

						var spantext = $("#sp5").text();
						var roomNumber = 5;

						$("#roomId").val(roomNumber);
						$("#date").val(radioVal);
						$("#dateroom").val(radioVal + " 허브홀");

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


			
			<button id="btnback" class="btn btncalender">이전달</button>
			<b id="monthTitle"></b>
			<button id="btngo" class="btn btncalender">다음달</button>

			<div id="divtable">
				<form>
					<table>

						<!-- 달력 들어가는 부분 -->

					</table>
					<div style="margin-bottom: 100px;">
					
						보여줌 : <input type="text" name="dateroom" id="dateroom"
							readonly="readonly">&emsp;&emsp; 히든할거 : 
						<!-- 히든으로 날짜 데이터 넘겨줌  -->
						<input type="text" name="date" id="date">
						<!-- 히든으로 공간 데이터 넘겨줌 -->
						<input type="text"
							name="roomId" id="roomId">

						&emsp;&emsp; 시간 : <select name="roomtime">
							<option value="">------시간 선택------</option>
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<!-- <input class="btn btncalender" type="submit" value="결정하기"> -->
				</form>
				<button id="radioButton" class="btn btncalender">선택</button>
			</div>
		</div>
	</div>
</div>
<script>
	makeCalendar();
</script>
<jsp:include page="footer.jsp"></jsp:include>