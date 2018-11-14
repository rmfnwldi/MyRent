<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script>
	var cnt = 0;
	$(function() {
		var cnt = 0;
		var list = $("#imgUl");
		//이전 버튼 클릭시 이전사진
		$("#prev").click(function() {
			if (cnt == 0) {
				cnt = 8;
				list.css("margin-left", "-100%");
			}
			cnt--;
			var marginLeft = cnt * 100
			list.animate({
				"margin-left" : -marginLeft + "%"
			});
		});

		//다음 버튼 클릭시 다음사진
		$("#next").click(function() {
			cnt++;
			if (cnt == 8) {
				list.css("margin-left", "0");
				cnt = 0;
			}
			var marginLeft = cnt * 100
			list.animate({
				"margin-left" : -marginLeft + "%"
			});
		});

		//hover시 Interval을 실행과 중시 시킴
		var imginter = setInterval("$move()", 3000);
		$("#imgs>*").hover(function() {
			clearInterval(imginter);
		}, function() {
			imginter = setInterval("$move()", 3000);
		});

		$("#imgs>a").hover(function() {
			$(this).css("background-color", "rgba(255, 255, 255, 0.1)");
		}, function() {
			$(this).css("background-color", "rgba(255, 255, 255, 0)");
		});

	});

	//다음 버튼과 같은 로직을 가진 interval을 위한 함수
	var $move = function() {
		var list = $("#imgUl");
		cnt++;

		if (cnt == 8) {
			list.css("margin-left", "0");
			cnt = 0;
		}

		var marginLeft = cnt * 100
		list.animate({
			"margin-left" : -marginLeft + "%"
		});
	};
</script>
</head>
<jsp:include page="topMenu.jsp"></jsp:include>
<div id="container">
	<div id="container">
		<div id="imgs">
			<ul id="imgUl">
				<li>
					<img src="image/main1.png">
				</li>
				<li>
					<img src="image/main2.png">
				</li>
				<li>
					<img src="image/main3.png">
				</li>
				<li>
					<img src="image/main4.png">
				</li>
				<li>
					<img src="image/main5.png">
				</li>
				<li>
					<img src="image/main6.png">
				</li>
				<li>
					<img src="image/main7.png">
				</li>
				<li>
					<img src="image/main8.png">
				</li>
			</ul>
			<a id="prev">〈</a> <a id="next">〉</a>
		</div>
		<div class="contents">
			<div style="background-color: blue;">게시판</div>
			<div>
				<font size="10px" style="padding-left: 10%;">동영상</font><sub><a href="https://vimeo.com/haja/videos">&emsp;더보기➤</a></sub>
				<iframe src="https://player.vimeo.com/video/262909418?title=1&portrait=0" width="100%" height="500px" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>