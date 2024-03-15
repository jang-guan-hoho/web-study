<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSAFY 게시판</title>
</head>
<body>
	<h2>Welcome SSAFY Board</h2>
	
	<a href="board?action=writeform">게시글 등록</a>
	<a href="board?action=list">게시글 목록</a>
</body>
</html> -->


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="../09/bootstrap-5.1.3-dist/css/bootstrap.css">

  <style>
    @import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
  </style>

</head>

<body>

  <header>
    <img src="./img/title.jpg" style="height:50px; width : 90px; ">

    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#" style="color:white;">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="board?action=reviewPage" style="color:white;">리뷰 검색</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:white;">
          <img src="img/사용자.png" style="height : 20px; width : 20px;">
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color : white;">
          <img src="img/공유.png" style="height : 20px; width : 20px; background-color : white ">
        </a>
      </li>
    </ul>

  </header>

  <main>
    <!-- 상단 -->
    <section>
      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">

          <div class="carousel-item active">
            <a href="./reviewPage.html">
              <img src="./img/헬스1.jpg" class="img-20" alt="...">
            </a>
            <img src="./img/헬스2.jpg" class="img-20" alt="...">
            <img src="./img/헬스3.jpg" class="img-20" alt="...">

          </div>
          <div class="carousel-item">
            <img src="./img/헬스1.jpg" class="img-20" alt="...">
            <img src="./img/헬스2.jpg" class="img-20" alt="...">
            <img src="./img/헬스3.jpg" class="img-20" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./img/헬스1.jpg" class="img-20" alt="...">
            <img src="./img/헬스2.jpg" class="img-20" alt="...">
            <img src="./img/헬스3.jpg" class="img-20" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>

    <!-- 검색 -->
    <section>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <form class="d-flex">
            <input class="form-control me-2" style="width : 700px" type="search" placeholder="운동 제목 검색"
              aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
        </div>
      </nav>
    </section>

    <!-- 최근  -->
    <section>
      <p style="margin-bottom: 2px;">최근 가장 많이 본 영상</p>

      <!-- 영상 -->
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://img.youtube.com/vi/gMaB-fG4u4g/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/swRNeYw1JkY/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/54tTYO-vU2E/mqdefault.jpg" class="card-img-top img-10" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://img.youtube.com/vi/QqqZH3j_vH0/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/tzN6ypk6Sps/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/u5OgcZdNbMo/mqdefault.jpg" class="card-img-top img-10" alt="...">
          </div>
          <div class="carousel-item">
            <img src="https://img.youtube.com/vi/PjGcOP-TQPE/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/7TLk7pscICk/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/gMaB-fG4u4g/mqdefault.jpg" class="card-img-top img-10" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <hr>
    </section>

    <!-- 운동부위 -->
    <section>
      <p style="margin: 2px 0;">운동부위선택</p>
      <!-- 버튼 -->
      <div style="margin: 3px 0;">
        <button type="button" class="btn btn-outline-primary">전신</button>
        <button type="button" class="btn btn-outline-secondary">상체</button>
        <button type="button" class="btn btn-outline-success">하체</button>
        <button type="button" class="btn btn-outline-danger">복부</button>
      </div>

      <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">

          <div class="carousel-item active" data-bs-interval="10000">
            <img src="https://img.youtube.com/vi/gMaB-fG4u4g/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/swRNeYw1JkY/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/54tTYO-vU2E/mqdefault.jpg" class="card-img-top img-10" alt="...">

          </div>

          <div class="carousel-item" data-bs-interval="2000">

            <img src="https://img.youtube.com/vi/QqqZH3j_vH0/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/tzN6ypk6Sps/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/u5OgcZdNbMo/mqdefault.jpg" class="card-img-top img-10" alt="...">

          </div>
          <div class="carousel-item">
            <img src="https://img.youtube.com/vi/PjGcOP-TQPE/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/7TLk7pscICk/mqdefault.jpg" class="card-img-top img-10" alt="...">
            <img src="https://img.youtube.com/vi/gMaB-fG4u4g/mqdefault.jpg" class="card-img-top img-10" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>

  </main>


  <footer> 푸터입니다</footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

</body>

</html>