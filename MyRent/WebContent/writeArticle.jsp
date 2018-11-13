<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu3.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<jsp:include page="topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">Q &amp; A</div>
	<div id="containerbody">
		<div class="row">
			<form action="menu3.jsp" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 5px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody style="border: 5px solid #dddddd;">
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="articleTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="articleContent" style="height: 1000px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="등록하기 ">
			</form>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>