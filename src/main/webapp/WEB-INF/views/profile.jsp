<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mystagram - 프로필</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<header>
    <!-- 헤더 내용 (index.jsp와 동일) -->
</header>

<main class="profile-page">
    <div class="profile-header">
        <img src="${user.profileImage}" alt="${user.username}" class="profile-picture">
        <div class="profile-info">
            <h1>${user.username}</h1>
            <p class="post-count">${user.postCount} 게시물</p>
            <p class="bio">${user.bio}</p>
        </div>
    </div>

    <div class="profile-posts">
        <c:forEach items="${userPosts}" var="post">
            <div class="profile-post">
                <img src="${post.image}" alt="게시물 이미지">
            </div>
        </c:forEach>
    </div>
</main>

<footer>
    <p>&copy; 2024 Mystagram. All rights reserved.</p>
</footer>

<script src="${pageContext.request.contextPath}/resources/js/profile.js"></script>
</body>
</html>