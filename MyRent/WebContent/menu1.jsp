<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu1.css">
<script>
	$(function() {
		$("#sidemenu li:nth-child(2)").hover(function() {
			$('#not').css("color", "black");
			$(this).css('cursor', "default");
		}, function() {
			$('#not').css("color", "black");
			$(this).css('cursor', "default");
		});
	});
</script>
</head>
<jsp:include page="topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">대 관 안 내</div>
	<div id="containerbody">
		<div>
			<ul id="sidemenu">
				<li>
					<a href="javascript:location.reload();">대관 안내</a>
				</li>
				<li>
					<a id="not">공간 정보</a>
				</li>
				<li>
					<ol id="roominfo">
						<li>
							<a href="roomconcert(s).jsp">합주실(소)</a>
						</li>
						<li>
							<a href="roomconcert(b).jsp">합주실(대)</a>
						</li>
						<li>
							<a href="roomstudio.jsp">커뮤니티 스튜디오</a>
						</li>
						<li>
							<a href="room999hall.jsp">999홀</a>
						</li>
						<li>
							<a href="roomhubhall.jsp">허브홀</a>
						</li>
					</ol>
				</li>
				<li>
					<a href="equipment.jsp">장비 목록</a>
				</li>
			</ul>
		</div>
		<div id="maintext">
			<br>
			<h1 style="color: #757575; text-align: center;">대관 안내</h1>
			<br>
			&emsp;대관공간 및 대관료 안내 문서를 읽어보시고, 아래의 '대관 신청하기' 버튼을 클릭하여 작성해 주시기 바랍니다.
			<br>
			<br>
			신청서를 작성하시면 내부 검토 후 대관여부를 알려 드립니다.
			<br>
			<br>
			대관신청은 행사일 기준 한 달 전부터만 가능합니다.
			<br>
			<br>
			<br>
			<font size="5" color="#757575"><b>* 대관절차</b><br></font>
			<br>
			1. 공간사용신청서 작성 : 하단 대관공간 및 대관료 안내 참고
			<br>
			<br>
			2. 대관 심의 : 사용목적 및 일정 등 가능 여부 확인
			<br>
			<br>
			3. 심의 알림 : 공간 사용 가능 여부를 알리고 공간사용료 내역서 송부
			<br>
			<br>
			4. 대관료 납부: 대관공간 및 대관료 안내 참조 / 납부 완료시점 대관 확정
			<br>
			<br>
			5. 대관 : 사용약속 준수 (하단 하자와의 약속 참고)
			<br>
			<br>
			<br>
			<font size="5" color="#757575"><b>* 이용수칙</b><br></font>
			<br>
			&emsp;공간 이용시에는 하자와의 약속을 반드시 지켜주시기 바랍니다.
			<br>
			<br>
			- 영리목적, 정치·종교 활동, 기타 청소년 활동에 저해된다고 판단되는 행사에는 대관을 하지 않습니다.
			<br>
			<br>
			- 하자 센터 내에서는 흡연과 음주를 할 수 없습니다. (실내, 야외 포함)
			<br>
			<br>
			- 공간 대관 시 애완동물을 데리고 출입할 수 없습니다.
			<br>
			<br>
			- 하자센터 대관 가능시간은 월~토 오전 10시부터 오후 10시까지입니다.
			<br>
			(관공서의 공휴일에 대한 규정 제2호, 제3호, 제4호 및 제9호에 정하는 공휴일 및 선거일 제외)
			<br>
			<br>
			- 사전 준비 및 리허설, 뒷정리를 포함한 시간을 고려하여 공간을 대관하여야 합니다.
			<br>
			<br>
			- 공간 사용 후 뒷정리(쓰레기 분리수거 및 처리)는 스스로 부탁드립니다.
			<br>
			<br>
			- 음식물 반입을 허용할 수 없는 공간이 있습니다. (대관시 별도 문의)
			<br>
			<br>
			- 주차장 시설이 매우 협소하므로 대중교통 이용을 부탁드립니다.
			<br>
			행사진행용 차량(최대 2대) 이외의 행사 방문객은 센터 근처의 공영주차장을 이용 바랍니다.
			<br>
			<br>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>