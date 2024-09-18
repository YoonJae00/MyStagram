<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mystagram - 로그인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">
<div class="container">
    <div class="login-box">
        <h1 class="logo">Mystagram</h1>
        <p class="intro">당신만의 특별한 순간을 기록하세요</p>
        <form action="/login" method="post" class="login-form">
            <input type="text" name="username" placeholder="사용자 이름" required>
            <input type="password" name="password" placeholder="비밀번호" required>
            <button type="submit">로그인</button>
        </form>
        <div class="forgot-password">
            <a href="#">비밀번호를 잊으셨나요?</a>
        </div>
    </div>
    <div class="signup-box">
        계정이 없으신가요? <a href="/signup">가입하기</a>
    </div>
</div>jsp
</body>
</html>