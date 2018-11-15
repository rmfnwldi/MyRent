<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu3.css">
</head>
<jsp:include page="topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">Q &amp; A</div>
	<div id="containerbody">
		<div id="divtable">
			<table id="articletable" style="text-align: center; border: 5px solid #dddddd">
				<thead >
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>건빵</td>
						<td>민준</td>
						<td>2018-11-12</td>
					</tr>
					<tr>
						<td>2</td>
						<td>공갈빵</td>
						<td>서연</td>
						<td>2018-11-08</td>
					</tr>
					<tr>
						<td>3</td>
						<td>꽃빵</td>
						<td>주원</td>
						<td>2018-11-05</td>
					</tr>
					<tr>
						<td>4</td>
						<td>단팥빵</td>
						<td>서현</td>
						<td>2018-11-03</td>
					</tr>
					<tr>
						<td>5</td>
						<td>롤빵</td>
						<td>현우</td>
						<td>2018-10-25</td>
					</tr>
					<tr>
						<td>6</td>
						<td>바게트</td>
						<td>준서</td>
						<td>2018-10-11</td>
					</tr>
					<tr>
						<td>7</td>
						<td>소보로빵</td>
						<td>하은</td>
						<td>2018-09-17</td>
					</tr>
					<tr>
						<td>8</td>
						<td>술빵</td>
						<td>예준</td>
						<td>2018-09-05</td>
					</tr>
					<tr>
						<td>9</td>
						<td>크림빵</td>
						<td>민재</td>
						<td>2018-07-16</td>
					</tr>
					<tr>
						<td>10</td>
						<td>프레첼</td>
						<td>은서</td>
						<td>2017-12-25</td>
					</tr>
				</tbody>
			</table>
			<div id="divbtn">
				<button class="btn btnwrite"
					onclick="javascript:location.href='writeArticle.jsp'">글쓰기</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>