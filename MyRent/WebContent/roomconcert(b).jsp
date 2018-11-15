<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/roomconcert(b).css">
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
	<div id="bennercolor">공 간 정 보</div>
	<div id="containerbody">
		<div>
			<ul id="sidemenu">
				<li>
					<a href="menu1.jsp">대관 안내</a>
				</li>
				<li>
					<a>공간 정보</a>
				</li>
				<li>
					<ol id="roominfo">
						<li>
							<a href="roomconcert(s).jsp">합주실(소)</a>
						</li>
						<li>
							<a href="javascript:location.reload();">합주실(대)</a>
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
			<h1 style="color: #757575;">합주실(대)</h1>
			<br>
			<img src="image/place2.jpg" width="100%">
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>