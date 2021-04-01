<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/jsp/header/header.css" />
<script>
$(document).ready(function(){
	
	$(window).scroll(function(){
		var floatPosition = parseInt($(".follow").css('top'))
		var rollit = $(this).scrollTop() >= 280;
		var rollit2 = $(this).scrollTop() >= 450;
		if(rollit){
			$(".menubar").css("position","fixed");
			$(".menubar").css("top",0);
			$(".menubar").css("width","100%");
			$(".menubar").css("text-align","center");
			$(".search").css("position","absolute");
			$(".search").css("rigth","88px");
			$(".search").css("top","2px");
			$(".menubar").css("z-index","9999");
			$(".main_menu li").css("width","80px");	
			$(".main_menu li a").css("width","80px");
			$(".menu_container1").css("margin-left","-360px");
			$(".menubar").css("box-shadow","rgb(245 245 245) 0px 4px 3px 0px");
			$(".main_menu ").css("margin-top","5px");	
		}else{
			$(".menubar").css("position","static");
			$(".search").css("position","static");
			$(".menubar").css("text-align","center");
			$(".main_menu li").css("position","relative");
			$(".main_menu li").css("width","100px");	
			$(".main_menu li a").css("width","100px");
			$(".menu_container1").css("margin-left","0px");
			$(".main_menu ").css("margin-top","0px");	
		}
		 var currentTop = $(window).scrollTop();

		 //이동 애니메이션
		 if(rollit2){
		 $(".follow").stop().animate({
		   "top" : currentTop+250+"px"
		 }, 570);
		 }
	});
});
</script>
</head>
<body>
<div class="headerwe"></div>
<div class="header">
<div class="usermenu" >
<ul>
<c:if test="${(loginVO!=null&&loginVO!='ADMIN') ? true : false}">
	<li><a href="#">내정보</a></li>
	<li><a href="Logout.do">로그아웃</a></li>
	<li><a href="getOneCart.do">장바구니</a></li>
</c:if>
<c:if test="${(loginVO=='ADMIN') ? true : false }">
	<li><a href="#">회원관리</a></li>
	<li><a href="Logout.do">로그아웃</a></li>
</c:if>
<c:if test="${(loginVO==null) ? true : false}">
	<li><a href="loginform.do">로그인</a></li>
	<li><a href="joinform.do">회원가입</a></li>
</c:if>

</ul>
</div>
<div class="logo_place"><div class="logo"><a href="mainAll.do">
<img src="https://blog.kakaocdn.net/dn/bz7Ch1/btqZ2bP8Cfb/cpxTpJl934jOAN6dRyZxLK/img.jpg" /></a></div></div>
<div class="menubar" >
<div class="menu_container1">
<ul class="main_menu">
<li class="menu1"><a href="#">카테고리</a>
<ul class="dropdown">
<li><a href="#"><h3>국내도서</h3></a></li>
<li><a href="#">유아/어린이</a></li>
<li><a href="#">소설/시/희곡</a></li>
<li><a href="#">에세이</a></li>
<li><a href="#">인문학</a></li>
<li><a href="#">과학/역사</a></li>
<li><a href="#">수험서/참고서</a></li>
<li><a href="#">기타</a></li>
<li><a href="#"><h3>국외도서</h3></a></li>
<li><a href="#">영미소설</a></li>
<li><a href="#">경제경영</a></li>
<li><a href="#">자기개발</a></li>
<li><a href="#">기타</a></li>
</ul></li>
<li class="menu2"><a href="BestSellerList1.do">베스트셀러</a></li>
<li class="menu3"><a href="NewBookList1.do">새로나온책</a></li>
<li class="menu4"><a href="#">커뮤니티</a>
<ul class="dropdown">
<li><a href="recommendList.do">이 책 추천해요</a></li>
<li><a href="requestList.do">없는 책 요청해요</a></li>
</ul></li>
</ul>
</div>
<div class="search" >
<form id="idFrom" action="BookList.do">
<input type="text" class="search_text" name="keyword" id="keyword" placeholder="검색어를 입력하세요" onkeyup="search()"/>
<input type="image" src="resources\img\main\searchicon.png" alt="검색" class="search_sub"/>
<ul id="searchList">

</ul>
</form>
</div>
</div>
</div>
<hr>
</body>
</html>