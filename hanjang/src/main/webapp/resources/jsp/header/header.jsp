<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/jsp/header/header.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
		         $(".menubar").css("height","52px");
		         $(".menubar").css("text-align","center");
		         $(".search").css("position","absolute");
		         $(".search").css("rigth","88px");
		         $(".search").css("top","2px");
		         $(".menubar").css("z-index","9999");
		         $(".p1").css("z-index","9998");
		         $(".menu_container1").css("margin-left","-268px");
		         $(".menubar").css("box-shadow","rgb(245 245 245) 0px 2px 1px 0px");
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
		         $(".menubar").css("box-shadow","none");
		         $(".menubar").css("height","45px");
		      }
		 var currentTop = $(window).scrollTop();

		 //?????? ???????????????
		 if(rollit2){
		 $(".follow").stop().animate({
		   "top" : currentTop+250+"px"
		 }, 570);
		 }
	});
});
</script>
<script>
function fade() {
	$('.menu1 .dropdown').show(300);
}
function fadeo() {
	$('.menu1 .dropdown').hide(300);
}
function fade1() {
	$('.menu4 .dropdown').show(300);
}
function fadeo1() {
	$('.menu4 .dropdown').hide(300);
}

</script>
<script>
      $(function() {    //?????? ??? ?????? ??????
        $("#keyword").autocomplete({
            source : function( request, response ) {
                 $.ajax({
                        type: 'get',
                        url: "search.do",
                        dataType: "json",
                        data:  {searchValue: request.term},
                        success: function(data) {
                            response(
                                $.map(data, function(item) {    //json[i] ?????? ??? ????????? item ???.
                                    return {
                                        label: item+"label",   
                                        value: item,   
                                        test : item+"test"  
                                    }
                                })
                            );
                        }
                   });
                },    // source ??? ?????? ?????? ??????
            select : function(event, ui) {    //????????? ?????????
                console.log(ui);
                console.log(ui.item.label); 
                console.log(ui.item.value);  
                console.log(ui.item.test); 
                
            },
            focus : function(event, ui) {    //????????? ??????
                return false;
            },
            minLength: 1,// ?????? ?????????
            autoFocus: true,
            classes: {    
                "ui-autocomplete": "highlight"
            },
            delay: 500, 
            position: { my : "right top", at: "right bottom" },  
            close : function(event){   
                console.log(event);
            }
        }).autocomplete( "instance" )._renderItem = function( ul, item ) {    //??? ????????? UI??? ???????????? ???????????? ??????
            return $( "<li>" )    
            .append( "<div>" + item.value + "</div>" )    //??????????????? ????????? ????????? HTML??? ????????? UI??? ????????? ???????????? ??????.
            .appendTo( ul );
     };
        
    });

</script>
</head>
<body>
<div class="headerwe"></div>
<div class="header">
<div class="usermenu" >
<ul>
<c:if test="${(loginVO!=null&&loginVO!='ADMIN') ? true : false}">

                  <li><a href="mypageOrderList.do">???????????????</a></li>
                  <li><a href="Logout.do">????????????</a></li>
                  <li><a href="getOneCart.do">????????????</a></li>
               </c:if>
               <c:if test="${(loginVO=='ADMIN') ? true : false }">
                  <li><a href="">????????????</a></li>
                  <li><a href="Logout.do">????????????</a></li>
               </c:if>
               <c:if test="${(loginVO==null) ? true : false}">
                  <li><a href="loginform.do">?????????</a></li>
<li><a href="joinform.do">????????????</a></li>
               </c:if>


</ul>
</div>
<div class="logo_place"><div class="logo"><a href="mainAll.do">
<img src="https://blog.kakaocdn.net/dn/bz7Ch1/btqZ2bP8Cfb/cpxTpJl934jOAN6dRyZxLK/img.jpg" /></a></div></div>
<div class="menubar" >
<div class="menu_container1">
<ul class="main_menu">
<li class="menu1" onmouseenter="fade()" onmouseleave="fadeo()"><a href="">????????????</a>
<ul class="dropdown">
<li><a href="BestSellerList1.do?categoryId=100"><h3 style="font-weight:bold;font-size:14px;">????????????</h3></a></li>
<li><a href="BestSellerList1.do?categoryId=109">??????/?????????</a></li>
<li><a href="BestSellerList1.do?categoryId=101">??????/???/??????</a></li>
<li><a href="BestSellerList1.do?categoryId=102">?????????</a></li>
<li><a href="BestSellerList1.do?categoryId=103">?????????</a></li>
<li><a href="BestSellerList1.do?categoryId=116">??????/??????</a></li>
<li><a href="BestSellerList1.do?categoryId=114">?????????/?????????</a></li>
<li><a href="BestSellerList1.do?categoryId=200"><h3 style="font-weight:bold;font-size:14px;">????????????</h3></a></li>
<li><a href="BestSellerList1.do?categoryId=205">????????????</a></li>
<li><a href="BestSellerList1.do?categoryId=117">????????????</a></li>
<li><a href="BestSellerList1.do?categoryId=118">????????????</a></li>
</ul></li>
<li class="menu2"><a href="BestSellerList1.do">???????????????</a></li>
<li class="menu3"><a href="NewBookList1.do">???????????????</a></li>
<li class="menu4" onmouseenter="fade1()" onmouseleave="fadeo1()"><a href="">????????????</a>
<ul class="dropdown">
<li><a href="recommendList.do">??? ??? ????????????</a></li>
<li><a href="requestList.do">?????? ??? ????????????</a></li>
</ul></li>
</ul>
</div>
<div class="search" >
<form id="idFrom" action="BookList.do">
<input type="text" class="search_text" name="keyword" id="keyword" placeholder="???????????? ???????????????" onkeyup="search()"/>
<input type="image" src="resources\img\main\searchicon.png" alt="??????" class="search_sub"/>
<ul id="searchList">
</ul>
</form>
</div>
</div>
</div>
<hr>
</body>
</html>