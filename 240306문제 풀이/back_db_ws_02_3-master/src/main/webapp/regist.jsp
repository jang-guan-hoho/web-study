<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리 화면</title>
<style>
label {
	display: inline-block;
	width: 150px;
}
section{
	display : block;
}
</style>
</head>
<body>
	<h1>SSAFY 도서 관리</h1>
	<form action="main" method="post">
		<fieldset>
			<input type="hidden" name="action" value="regist">
			<section>
			<label for="isbn">도서번호</label>
			<input type="text" name="isbn" id="isbn">
			</section>
			<section>
			<label for="title">도서명</label>
			<input type="text" name="title"id="title">
			</section>
			<section>
			<label for="author">저자</label>
			<input type="text" name="author" id="author">
			</section>
			<section>
			<label for="price">가격</label>
			<input type="number" name="price" id="price">
			</section>
			<section>
			<label for="desc">설명</label>
			<br>
			<textarea cols="80" name="desc" id="desc"></textarea>
			</section>
			
			<input type="submit" value = "등록">
			<input type="reset" value = "취소">
		</fieldset>
	</form>
</body>
</html>