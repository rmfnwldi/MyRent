<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body oncontextmenu="return false" ondragstart="return false" onselect="return false">
	<div id="logging">
		<div id="divTopBtn">
			<button onclick="location.href = 'pagemy.jsp'">마이페이지</button>
			<button onclick="location.href = 'pagelogin.jsp'">로그아웃</button>
		</div>
		<div id="divLogo">
			<a href="main.jsp"><img id="imgLogo" src="image/logo.png" ondragstart="return false"></a>
			<nav id="navMenu">
				<ul id="mainMenu">
					<li>
						<a href="menu1.jsp">대관안내</a>
					</li>
					<li>
						<a href="menu2.jsp">대관하기</a>
					</li>
					<li>
						<a href="menu3.jsp">Q&amp;A</a>
					</li>
					<li>
						<a href="menu4.jsp">찾아오는 길</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>