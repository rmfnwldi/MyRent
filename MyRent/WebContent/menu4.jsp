<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu4.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96b8706698bbb616b540588b939a86bc&libraries=services"></script>
</head>
<jsp:include page="topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">찾 아 오 는 길</div>
	<br>
	<h1 style="color: #757575">하 자 센 터</h1>
	<h2 style="color: #757575">청소년직업체험센터</h2>
	<br>
	<div id="address">
		<b>주소</b> : 서울특별시 영등포구 영신로 200
		<br>
		<b>도로명</b> : 영등포동 7가 57번지
		<br>
		<b>우편번호</b> : 07244
		<br>
		<b>대표전화</b> : 02-2677-9200
		<br>
		<b>팩스번호</b> : 02-2679-9300
	</div>
	<div class="text">
		<h2 style="color: #757575">버스 이용시</h2>
		<br>
		<ul class="textlist">
			<li><b>지선버스</b> : 5616, 5714, 6514</li>
			<li><b>간선버스</b> : 605, 661, 760</li>
			<li><b>좌석버스</b> : 8000, 9030, 700</li>
			<li><b>일반버스</b> : 5, 60, 60-3, 70-2, 88</li>
		</ul>
	</div>
	<div class="text">
		<h2 style="color: #757575">지하철 이용시</h2>
		<br>
		<ul class="textlist">
			<li><b>5호선</b> : 영등포시장역 1번 출구 도보 7분</li>
			<li><b>2호선</b> : 영등포구청역 4번 출구 도보 12분</li>
		</ul>
	</div>
	<div class="map_wrap" id="mapbody">
		<div id="map" style="width: 100%; height: 500px; position: relative; overflow: hidden;"></div>
		<div class="custom_typecontrol radius_border">
			<span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
		</div>
		<div class="custom_zoomcontrol radius_border">
			<span onclick="zoomIn()"> <img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대">
			</span> <span onclick="zoomOut()"> <img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소">
			</span>
		</div>
	</div>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(37.525215, 126.903400),
			level : 3
		};

		var map = new daum.maps.Map(container, options);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);

		// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomIn() {
			center: new daum.maps.LatLng(37.525215, 126.903400), map
					.setLevel(map.getLevel() - 1);
		}

		function zoomOut() {
			center: new daum.maps.LatLng(37.525215, 126.903400), map
					.setLevel(map.getLevel() + 1);
		}

		// 지도에 마커를 표시합니다 
		var marker = new daum.maps.Marker({
			map : map,
			position : new daum.maps.LatLng(37.525215, 126.903400)
		});

		var content = '<div class="wrap">'
				+ '    <div class="info">'
				+ '        <div class="title">'
				+ '           하자센터'
				+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
				+ '        </div>'
				+ '        <div class="body">'
				+ '            <div class="img">'
				+ '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">'
				+ '           </div>'
				+ '            <div class="desc">'
				+ '                <div class="ellipsis">영등포구 영등포동7가 영신로 200</div>'
				+ '                <div class="jibun ellipsis">(우) 07244 (지번) 영등포동7가 57</div>'
				+ '                <div><a href="https://haja.net" target="_blank" class="link">홈페이지</a></div>'
				+ '            </div>' + '        </div>' + '    </div>'
				+ '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new daum.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		daum.maps.event.addListener(marker, 'click', function() {
			overlay.setMap(map);
		});

		// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		function closeOverlay() {
			overlay.setMap(null);
		}

		// 지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
		function setMapType(maptype) {
			var roadmapControl = document.getElementById('btnRoadmap');
			var skyviewControl = document.getElementById('btnSkyview');
			if (maptype === 'roadmap') {
				map.setMapTypeId(daum.maps.MapTypeId.ROADMAP);
				roadmapControl.className = 'selected_btn';
				skyviewControl.className = 'btn';
			} else {
				map.setMapTypeId(daum.maps.MapTypeId.HYBRID);
				skyviewControl.className = 'selected_btn';
				roadmapControl.className = 'btn';
			}
		}
	</script>
</div>
<jsp:include page="footer.jsp"></jsp:include>