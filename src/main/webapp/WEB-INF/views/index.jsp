<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mystagram - 홈</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<header>
    <nav>
        <div class="logo">Mystagram</div>
        <div class="search-bar">
            <input type="text" placeholder="검색">
        </div>
        <div class="nav-icons">
            <a href="#" class="icon-home">홈</a>
            <a href="#" class="icon-new-post">새 글</a>
            <a href="#" class="icon-profile">프로필</a>
        </div>
    </nav>
</header>

<main>
    <div class="container">
        <aside class="calendar">
            <!-- 달력 컴포넌트가 여기에 들어갑니다 -->
        </aside>
        <section class="timeline">
            <article class="post">
                <header>
                    <time datetime="2024-06-14">2024년 6월 14일</time>
                </header>
                <div class="post-content">
                    <img src="placeholder-image.jpg" alt="일기 이미지">
                    <p>오늘은 정말 좋은 날이었다. 오랜만에 가족들과 함께 시간을 보냈는데...</p>
                </div>
                <footer>
                    <div class="tags">
                        <span>#가족</span>
                        <span>#행복</span>
                    </div>
                    <button class="view-more">더보기</button>
                </footer>
            </article>
            <!-- 더 많은 게시물... -->
        </section>
    </div>
</main>

<footer>
    <p>&copy; 2024 Mystagram. All rights reserved.</p>
</footer>

<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>