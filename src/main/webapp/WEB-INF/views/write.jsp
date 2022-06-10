<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글</title>
<link href="./css/menu.css" rel="stylesheet">
</head>
<body>
<div id="container">
		<div id="menubar">
			<h1>로고</h1>
			<br> <br>
			<c:import url="menu.jsp"/>
			</div>
	<h1>글쓰기</h1>
	<form action="./write" method="post">
		<input type="text" name="title"><br>
		<textarea name="content"></textarea><br>
		<button type="submit">글쓰기</button>
	</form>
</body>
</html>