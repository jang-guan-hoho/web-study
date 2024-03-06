<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 등록 화면</title>
<style>
	label{
		display: inline-block;
		width: 150px;
	}
</style>
</head>
<body>
	<h1>SSAFY 영화 관리</h1>
	
	<form action="main" method = "Post">
		<fieldset>
			<legend>영화 정보 입력</legend>
			<input type = "hidden" name="action" value="regist">
			<label for="title">제목</label>
			<input type = "text" name="title" id="title"><br>
			<label for="title">감독</label>
			<input type = "text" name="director" id="director"><br>
			<label for="title">장르</label>
			<input type = "text" name="genre" id="genre"><br>
			<label for="title">상영시간</label>
			<input type = "number" name="runningTime" id="runningTime"><br>
		
			<input type="submit" value="등록">
			<input type="reset" value = "취소">
		</fieldset>
	</form>
</body>
</html>