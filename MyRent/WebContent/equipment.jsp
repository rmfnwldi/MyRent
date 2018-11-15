<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/equipment.css">
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
	<div id="bennercolor">장 비 목 록</div>
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
					<a href="javascript:location.reload();">장비 목록</a>
				</li>
			</ul>
		</div>
		<div id="maintext">
			<br>
			<font size="20px">장비목록</font>
			<table>
				<thead>
					<tr>
						<th>분류</th>
						<th>품목</th>
						<th>모델</th>
						<th>수량</th>
						<th>위치</th>
						<th>취득일</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="5">악기</td>
						<td>아코디언</td>
						<td>24 bass</td>
						<td>1</td>
						<td>999홀</td>
						<td>1/29/2003</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>아코디언</td>
						<td>24 bass</td>
						<td>1</td>
						<td>999홀</td>
						<td>1/29/2003</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>신디사이저</td>
						<td>Kurzweil PC2X</td>
						<td>1</td>
						<td>합주실</td>
						<td>8/13/2003</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>디지털피아노</td>
						<td>Kurzweil MPS-10</td>
						<td>1</td>
						<td>미니극장</td>
						<td>5/14/2013</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>업라이트 피아노</td>
						<td>YAMAHA U3</td>
						<td>1</td>
						<td>999홀</td>
						<td>12/23/2015</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="4">악기용 앰프</td>
						<td>기타앰프</td>
						<td>Marshall Valvestate 100V</td>
						<td>1</td>
						<td>999홀</td>
						<td>8/13/2003</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>베이스 앰프</td>
						<td>Zaksal BA-303</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>11/20/2004</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>기타앰프</td>
						<td>Marshall VS || 65R</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>12/30/2008</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>기타앰프</td>
						<td>Marshall VS || 100R</td>
						<td>1</td>
						<td>999홀</td>
						<td>12/30/2008</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="6">DJ장비</td>
						<td>턴테이블</td>
						<td>Vestax PDX-2000 MK2PRO</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>11/24/2004</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="2">DJ믹서</td>
						<td>Vestax PMC-07 Pro ISP Mixer</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>11/24/2004</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Vestax PMC-007</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>5/10/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="2">디지털 턴테이블</td>
						<td>Pionner CDJ1000MK2</td>
						<td>1</td>
						<td>미니극장</td>
						<td>5/14/2013</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Pionner CDJ1000MK2</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>12/23/2015</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>턴테이블 인터페이스</td>
						<td>
							RANE Serato Scratch Live
							<br>
							SL-3
						</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>5/22/2011</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="6">마이크</td>
						<td rowspan="2">마이크</td>
						<td>AVANTONE-CK6</td>
						<td>3</td>
						<td>녹음부스</td>
						<td>7/13/2016</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>SHURE PG58</td>
						<td>3</td>
						<td>녹음부스</td>
						<td>12/18/2016</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="4">무선마이크</td>
						<td>SHURE SLX24/SM58</td>
						<td>3</td>
						<td>허브홀</td>
						<td>12/5/2011</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Shure BLX24R/SM58</td>
						<td>3</td>
						<td>999홀</td>
						<td>2/1/2014</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Shure BLX24R/SM58</td>
						<td>2</td>
						<td>커뮤니티스튜디오</td>
						<td>9/1/2014</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>LINE6 XD-V55</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>12/15/2016</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="7">스피커</td>
						<td>모니터 스피커</td>
						<td>GENELEC 1030A</td>
						<td>2개 1조</td>
						<td>커뮤니티스튜디오</td>
						<td>6/24/2003</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="3">스피커</td>
						<td>EV eliminator double</td>
						<td>6개 3조</td>
						<td>999홀</td>
						<td>3/8/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>JBL MP-418SP (우퍼)</td>
						<td>2개 1조</td>
						<td>999홀</td>
						<td>6/30/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>MACKIE SRM450</td>
						<td>2개 1조</td>
						<td>합주실</td>
						<td>12/31/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="3">이동형 PA 시스템</td>
						<td>YAMAHA STAGE PAS 500</td>
						<td>2개 1조</td>
						<td>커뮤니티스튜디오</td>
						<td>9/29/2010</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>YAMAHA STAGE PAS 600i</td>
						<td>2개 1조</td>
						<td>커뮤니티스튜디오</td>
						<td>9/12/2016</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Mackie FreePlay</td>
						<td>2개</td>
						<td>녹음부스</td>
						<td>12/16/2016</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="2">앰프</td>
						<td rowspan="2">앰프</td>
						<td>CROWN XLS-402</td>
						<td>1</td>
						<td>999홀</td>
						<td>3/8/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>SAMSON S2000</td>
						<td>1</td>
						<td>합주실</td>
						<td>3/8/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="5">홈씨어터세트</td>
						<td>서브 우퍼</td>
						<td>YAMAHA SW1500</td>
						<td>1</td>
						<td>미니극장</td>
						<td>4/29/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>리어스피커</td>
						<td>BOSE 161</td>
						<td>1</td>
						<td>미니극장</td>
						<td>4/29/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>메인스피커</td>
						<td>BOSE 601</td>
						<td>1</td>
						<td>미니극장</td>
						<td>4/29/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>센터스피커</td>
						<td>BOSE VCS10</td>
						<td>1</td>
						<td>미니극장</td>
						<td>4/29/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>앰프</td>
						<td>YAMAHA V650</td>
						<td>1</td>
						<td>미니극장</td>
						<td>4/29/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="9">음향제어</td>
						<td>마이크프리앰프</td>
						<td>Avalon AD2022</td>
						<td>1</td>
						<td>커뮤니티스튜디오</td>
						<td>11/20/2004</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="2">오디오인터페이스</td>
						<td>Degidesign M Box Pro 1</td>
						<td>1</td>
						<td>999홀</td>
						<td>11/20/2004</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>UA Apollo QUAD</td>
						<td>1</td>
						<td>커뮤니티스튜디오</td>
						<td>7/21/2016</td>
						<td>정상</td>
					</tr>
					<tr>
						<td rowspan="6">아날로그 믹서</td>
						<td>Mackie 1402 VLZ Pro</td>
						<td>1</td>
						<td>커뮤니티스튜디오</td>
						<td>11/20/2004</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>SOUNDCRAFT LX-7 32CH</td>
						<td>1</td>
						<td>창고</td>
						<td>3/8/2005</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>SOUNDCRAFT E6</td>
						<td>1</td>
						<td>커뮤니티스튜디오</td>
						<td>5/23/2006</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Behringer Eurorack MX602A</td>
						<td>2</td>
						<td>녹음부스</td>
						<td>6/30/2008</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Mackie ONYX 24.4</td>
						<td>1</td>
						<td>999홀</td>
						<td>9/21/2012</td>
						<td>정상</td>
					</tr>
					<tr>
						<td>Mackie 402VLZ4</td>
						<td>1</td>
						<td>녹음부스</td>
						<td>12/7/2016</td>
						<td>정상</td>
					</tr>
				</tbody>
			</table>
			<br>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>