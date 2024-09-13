<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mystagram - 게시물 작성</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<header>
    <!-- 헤더 내용 (index.jsp와 동일) -->
</header>

<main class="post-create">
    <h1>새 게시물 만들기</h1>
    <form action="createPost" method="post" enctype="multipart/form-data">
        <div class="file-input">
            <input type="file" name="image" id="image" accept="image/*" required>
            <label for="image">이미지 선택</label>
        </div>
        <textarea name="caption" placeholder="문구 입력..." required></textarea>
        <button type="submit">공유하기</button>
    </form>
</main>

<footer>
    <p>&copy; 2024 Mystagram. All rights reserved.</p>
</footer>

<script src="${pageContext.request.contextPath}/resources/js/post.js"></script>
</body>
</html>