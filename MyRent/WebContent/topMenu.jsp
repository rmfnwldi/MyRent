<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body oncontextmenu="return false" ondragstart="return false" onselect="return false">
	<div style="background-color: lightgreen;">
		<div id="divlogin">
			<div style="margin-right: 100px; padding-top: 15px;">
				<a href="pagemy.jsp"><i class="fa fa-user-circle"></i>&nbsp;마이페이지</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="pagelogin.jsp"><i class="fa fa-user-times" aria-hidden="true"></i>&nbsp;로그아웃</a>
			</div>
		</div>
		<nav id="navMenu">
			<div id="divLogo">
				<a href="main.jsp"><img id="imgLogo" src="image/logo.png" ondragstart="return false"></a>
			</div>
			<ul id="mainMenu">
				<li>
					<a href="menu1.jsp" class="sm-link sm-link_bg sm-link9"><span class="sm-link__label">대&nbsp;관&nbsp;안&nbsp;내</span> </a>
				</li>
				<li>
					<a href="menu2.jsp" class="sm-link sm-link_bg sm-link9"><span class="sm-link__label">대&nbsp;관&nbsp;하&nbsp;기</span></a>
				</li>
				<li>
					<a href="menu3.jsp" class="sm-link sm-link_bg sm-link9"><span class="sm-link__label">Q&nbsp;&nbsp;&amp;&nbsp;&nbsp;A</span></a>
				</li>
				<li>
					<a href="menu4.jsp" class="sm-link sm-link_bg sm-link9"><span class="sm-link__label">찾아오시는길</span></a>
				</li>
			</ul>
		</nav>
	</div>