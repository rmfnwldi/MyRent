<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>달력</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	//Calendar 객체 생성하기
	var Calendar = new Date();

	var year = Calendar.getFullYear(); // 년도
	var month = Calendar.getMonth(); // 월
	var today = Calendar.getDate(); // 일
	var weekday = Calendar.getDay(); // 요일

	function backMonth() {
		Calendar = new Date(year, month -= 1, today);
		makeCalendar();

		if (month < 1) {
			year -= 1;
			month = 12;
			Calendar = new Date(year, month -= 1, today);
			makeCalendar();
		}
	}
	
	function goMonth() {
		Calendar = new Date(year, month += 1, today);
		makeCalendar();

		if (month > 12) {
			year += 1;
			month = 11;
			Calendar = new Date(year, month += 1, today);
			makeCalendar();
		}
	}

	function makeCalendar() {

		// getDay() 는 요일을 숫자로 반환한다
		// 일요일은 0 월요일은 1
		var day_of_week = [ "일", "월", "화", "수", "목", "금", "토" ];

		// getMonth()는 월을 숫자로 반환한다
		// 1월은 0, 2월은 1
		var month_of_year = [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
				"9월", "10월", "11월", "12월" ];

		Calendar.setDate(1); // 달력은 1일부터 표시!

		var DAYS_OF_WEEK = 7; // 일주일은 7일

		// 그해 한 달의 마지막 일
		var DAYS_OF_MONTH = new Date(year, month, 0).getDate();

		

		var strTitle =  "<strong>" + year + "년 " + month_of_year[month] + "</strong>";
		
		
		// 행
		var TR_start = "<tr>";
		var TR_end = "</tr>";

		var TD_week_start = "<td class='week'>"; // 월요일 ~ 일요일을 나타낼 td
		var TD_blank_start = "<td class=''blank>"; // blank (1일 이전의 빈칸)
		var TD_today_start = "<td class='today'>"; // 오늘 날짜
		var TD_day_start = "<td class='day'>"; // 평일
		var TD_saturday_start = "<td class='saturday'>";
		var TD_sunday_start = "<td class='sunday'>";
		var TD_end = "</td>";

		
		

		
		var str = "";
		
		// 여기서부터 tr 시작
		// 일단 맨 첫줄을 요일을 나타내자

		str += TR_start; // 요일

		for (var i = 0; i < DAYS_OF_WEEK; i++) {
			// day_of_week배열에 있는 [일 월 화 수 목 금 토]를 순서대로 td에 담음
			str += TD_week_start + day_of_week[i] + TD_end;
		}

		// 요일표시가 끝나고 다음 줄 작성
		str += TR_end;

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

				var day = Calendar.getDate(); // 날짜
				var week_day = Calendar.getDay(); // 요일

				// 일요일이면 tr로 한칸 내린다
				if (week_day == 0) {
					str += TR_start;
				}

				// 오늘 날짜라면
				if (day == today) {
					str += TD_today_start + day + TD_end;
				}

				else {

					switch (week_day) {

					case 0: // 일요일

						str += TD_sunday_start + day + TD_end;
						break;

					case 6: // 토요일

						str += TD_saturday_start + day + TD_end;
						str += TR_end;
						break;

					default: // 평일
						str += TD_day_start + day + TD_end;
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
</script>

</head>

<body>
	<table></table>
	<button onclick='backMonth()'>이전</button>
	<button onclick='goMonth()'>다음</button>

	<script>
		makeCalendar();
	</script>


</body>

</html>