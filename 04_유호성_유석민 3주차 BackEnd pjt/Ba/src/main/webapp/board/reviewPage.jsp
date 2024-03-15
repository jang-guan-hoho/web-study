<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>운동영상 리뷰</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.css">
<link rel="stylesheet" href="review1.css">
<link rel="stylesheet" href="review2.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&display=swap')
	;

.modal {
	position: absolute;
	display: none;
	justify-content: center;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal_body {
	position: absolute;
	top: 50%;
	width: 400px;
	height: 600px;
	padding: 40px;
	text-align: center;
	background-color: white;
	box-shadow: 0 2px 3px 0 black;
	transform: translateY(-50%);
}
</style>
</head>

<body>
	<header>
		<nav>
			<a href="#"> <img src="img/logo.jpg" alt="logo"
				style="width: 100px; height: 50px;">
			</a>
			<h2>운동 영상 리뷰</h2>
		</nav>
		<hr>
	</header>
	<main>
		<article class="video">
			<div style="width: 640px; margin: 0px auto;">
				<iframe width="640" height="320"
					src="https://www.youtube.com/embed/gMaB-fG4u4g"
					title="전신 다이어트 최고의 운동 [칼소폭 찐 핵핵매운맛]" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
		</article>
		<hr>

		<section>
			<nav class="navbar">
				<a href="#"
					style="background-color: white; color: blue;"
					class="btn btn-primary" id="btn-open-modal">글작성</a>
				<form id="searchBar">
					<input class="form-control mr-sm-2" type="search"
						placeholder="이름, 제목을 입력하세요" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</nav>
		</section>
		<hr>
		<section>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">조회수</th>
						<th scope="col">작성시간</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="board">
						<tr>
							<td>${board.id}</td>
							<td><a href="board?action=detail&id=${board.id}">${board.title}</a></td>
							<td>${board.writer}</td>
							<td>${board.viewCnt}</td>
							<td>${board.regDate}</td>
						</tr>
					</c:forEach>
					<!--  <tr>
                        <th scope="row">4</th>
                        <td><a href="board?action=detail">와! 효과만점 운동 영상입니다.</a></td>
                        <td>a</td>
                        <td>0</td>
                        <td>2022-01-05 01:32:37</td>
                    </tr> -->
				</tbody>
			</table>
		</section>

		<article>
			<div class="modal">
				<div class="modal_body">
					<header>
						<nav>
							<a href="board?action=home"> <img src="img/logo.jpg" alt="logo"
								style="width: 100px; height: 50px;">
							</a>
							<h2>운동 영상 리뷰</h2>
						</nav>
						<hr>
					</header>
					<main>
						<section>
							<form action="board" method="POST">
								<input type="hidden" name = "action" value="write">
								<br>
								<div class="form-group">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="title" placeholder="제목">
								</div>
								<br>
								<div class="form-group">
									<input type="text" class="form-control"
										id="exampleFormControlInput2" name="writer" placeholder="작성자">
								</div>
								<br>
								<div class="form-group">
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" placeholder="내용" name="content"></textarea>
								</div>
								<br>
								<div id="registerbutton">
									<button type="submit" class="btn btn-primary"
										style="background-color: white; color: blue;">등록</button>
									<button type="reset" class="btn btn-danger"
										style="background-color: white; color: red;">취소</button>
								</div>
							</form>
						</section>
					</main>

				</div>

			</div>


		</article>
	</main>


	<footer>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
						class="sr-only">Next</span>
				</a></li>
			</ul>
		</nav>
	</footer>
	<script>
        const modal = document.querySelector('.modal');
        const btnOpenModal=document.querySelector('#btn-open-modal');

        btnOpenModal.addEventListener("click", ()=>{
            modal.style.display="flex";
        });
    </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>