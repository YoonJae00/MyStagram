<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mystagram - 피드</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<header>
    <!-- 헤더 내용 (index.jsp와 동일) -->
</header>

<main>
    <section class="feed">
        <c:forEach items="${posts}" var="post">
            <article class="post">
                <header>
                    <img src="${post.userProfileImage}" alt="${post.username}">
                    <h2>${post.username}</h2>
                </header>
                <img src="${post.image}" alt="게시물 이미지">
                <div class="post-actions">
                    <button class="like-button">좋아요</button>
                    <button class="comment-button">댓글</button>
                </div>
                <p>${post.caption}</p>
                <div class="comments">
                    <!-- 댓글 표시 -->
                </div>
            </article>
        </c:forEach>
    </section>
</main>

<footer>
    <p>&copy; 2024 Mystagram. All rights reserved.</p>
</footer>

<script src="${pageContext.request.contextPath}/resources/js/feed.js"></script>
</body>
</html>