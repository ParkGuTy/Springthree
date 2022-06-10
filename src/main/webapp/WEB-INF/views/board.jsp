<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="./css/menu.css" rel="stylesheet">
</head>
<body>
	<h1>게시판</h1>
	<div id="container">
		<div id="menubar">
			<h1>로고</h1>
			<br> <br>
			<c:import url="menu.jsp"/>
			</div>
		
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>
			<th>쓴사람</th>
			<th>조회수</th>
			<th>좋아요</th>
		</tr>
		<c:forEach items="${boardList}" var="b">
		<tr>
			<th>${b.b_no }</th>
			<th>${b.b_title }</th>
			<th>${b.b_date }</th>
			<th>${m_name }</th>
			<th>${b.b_count }</th>
			<th>${b.b_like }</th>
		</tr>
		</c:forEach>
		
	</table>
	<button onclick="location.href='./write'">글쓰기</button>
	
	
	
	
	
	<!-- Controller -> Service -> DAO -> DB (Model)
	<!-- Controller : 흐름을 제어 --> 
	<!-- Service : 필요한 로직
	DAO : mybatis 에게 일 시키기 
	DB : 데이터 가져오기
	
	jsp(View) -> 사용자 -->
</body>
</html>