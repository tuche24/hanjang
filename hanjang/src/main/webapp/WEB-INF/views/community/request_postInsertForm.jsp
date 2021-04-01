<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jquery 링크-->
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>

<!-- 헤더연결 -->
<script defer>
	$(document).ready(function(){
		$("#header").load("/myapp/resources/jsp/header/header.jsp");
	})
</script>
<!-- 푸터연결 -->
<script defer>
	$(document).ready(function(){
		$("#footer").load("/myapp/resources/jsp/footer/footer.jsp");
	})
</script>
<title>Insert title here</title>
<style>
.footer div{
	float:left;
}
.footer{
	margin:0 auto;
	width:1050px;
	height:300px;
}
</style>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/communityStyle.css">
</head>
<body>
<!-- header부분 -->
<div id="header"></div>
<div class="boardTitle">없는 책 요청해요</div>
<div class="boardSubTitle">한장두장에 없는 도서를 입고요청하는 게시판입니다.</div>
<form action="requestInsert.do" method="post" autocomplete="off" enctype="multipart/form-data">
<table border="1" class="MainBoardLayout">
	<tr>
		<td colspan="5" style="height:20px;"><hr class="headline"></td>
	</tr>
	<tr>
		<td style="height:35px;">제목</td>
		<td colspan="4"><input type="text" name="title" style="width:75%; text-align:center; border: 3px dotted #dddddd; border-radius: 10px;" required></td>
	</tr>
	<tr style="height:20px;">
		<td colspan="5"><hr class="line"></td>
	</tr>
	<tr>
		<td style="height:35px;">작성자</td>
		<td colspan="4" style="height:30px; width:70%; text-align:center;">
		<%= session.getAttribute("loginNick") %>
		<input type="hidden" name="writerId" value="<%= session.getAttribute("loginVO") %>" />
		<input type="hidden" name="writerNick" value="<%= session.getAttribute("loginNick") %>"/></td>
	</tr>
	<tr>
		<td colspan="5"><hr class="line"></td>
	</tr>
		<tr>
		<td style="height:35px;">파일</td>
		<td colspan="4" style="height:35px;"><input type="file" name="file" style="font-size:13px; width:75%; text-align:center; border: 3px dotted #dddddd; border-radius: 10px;"></td>
	</tr>
	<tr>
		<td colspan="5"><hr class="line"></td>
	</tr>
	<tr>
		<td colspan="5"><textarea rows="20" cols="100" class="postSection_inserttxt" name="content" required>${post.content }</textarea></td>
	</tr>
	<tr>
		<td colspan="5"><hr class="line"></td>
	</tr>
	<tr>
		<td colspan="5" style="text-align:right;"><div class="listANDregister">
		<a href="requestList.do" style="margin-right:20px;">목록</a>
		<input type="submit" class="submitBtn" value="등록"></div></td>
	</tr>
</table>
</form>
<!-- footer부분 -->
<div id="footer"></div>
</body>
</html>