<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 등록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="review1.css">
    <link rel="stylesheet" href="review2.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&display=swap');

        main {
            text-align: center;
        }

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
            <a href="board?action=home">
                <img src="img/logo.jpg" alt="logo" style="width: 100px; height: 50px;">
            </a>
            <h2>운동 영상 리뷰</h2>
        </nav>
        <hr>
    </header>
    <main>
        <section id="reviewDetail-btn">
            <a href="board?action=reviewPage" style="background-color: white; color: blue;" class="btn btn-primary"
                id="list">목록</a>
            <div>
                <a  style="background-color: white; color: blue;" class="btn btn-primary" id="btn-open-modal">글수정</a>
                <a href="board?action=delete&id=${board.id}" class="btn btn-danger" style="background-color: white; color: red;">글삭제</a>
            </div>
        </section>
        <article class="reviewDetail-main">
            <h1>${board.title}</h1>
            <br>
            <p>${board.content }</p>
            <p>작성자 : ${board.writer}</p>
            <p>등록일 : ${board.regDate}</p>
            <p>조회수 : ${board.viewCnt}</p>
        </article>
    </main>

    <div class="modal">
        <div class="modal_body">
            <header>
                <nav>
                    <a href="board?action=home">
                        <img src="img/logo.jpg" alt="logo" style="width: 100px; height: 50px;">
                    </a>
                    <h2>운동 영상 리뷰</h2>
                </nav>
                <hr>
            </header>
            <main>
                <section>
                    <form action="board" method="POST">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="id" value="${board.id}">
                        <br>
                        <div class="form-group">
                            <input type="text" class="form-control" id="exampleFormControlInput1"
                                placeholder="제목" name="title">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">수정할 내용</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                                placeholder="내용" name="content"></textarea>
                        </div>
                         <br>
                        <div class="form-group">
                            <input type="text" class="form-control" id="exampleFormControlInput1"
                                placeholder="글쓰니" name="writer" value="${board.writer }" readonly>
                        </div>
                        <br>
                        <div id="registerbutton">
                            <button type="submit" class="btn btn-primary"
                                style="background-color: white; color: blue;">수정</button>
                            <button type="reset" class="btn btn-danger"
                                style="background-color: white; color: red;">취소</button>
                        </div>
                    </form>
                </section>
            </main>

        </div>

    </div>

    <script>
        const modal = document.querySelector('.modal');
        const btnOpenModal = document.querySelector('#btn-open-modal');

        btnOpenModal.addEventListener("click", () => {
            modal.style.display = "flex";
        });
    </script>

</body>

</html>