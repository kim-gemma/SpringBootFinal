<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<style>
    body{
        background: linear-gradient(135deg,#4e73df,#1cc88a);
        height:100vh;
        display:flex;
        align-items:center;
        justify-content:center;
    }

    .login-box{
        width:400px;
        background:white;
        padding:40px;
        border-radius:15px;
        box-shadow:0 10px 30px rgba(0,0,0,0.2);
    }

    .login-title{
        font-weight:bold;
        text-align:center;
        margin-bottom:30px;
    }
</style>

</head>
<body>

<div class="login-box">
    <h3 class="login-title">로그인</h3>
    <form action="loginprocess" method="post">
        <!-- 아이디 -->
        <div class="mb-3">
            <label class="form-label">아이디</label>
            <div class="input-group">
                <span class="input-group-text">
                    <i class="bi bi-person"></i>
                </span>
                <input type="text" name="id"
                       class="form-control"
                       placeholder="아이디 입력"
                       required>
            </div>
        </div>
        <!-- 비밀번호 -->
        <div class="mb-4">
            <label class="form-label">비밀번호</label>
            <div class="input-group">
                <span class="input-group-text">
                    <i class="bi bi-lock"></i>
                </span>
                <input type="password" name="pass"
                       class="form-control"
                       placeholder="비밀번호 입력"
                       required>
            </div>
        </div>
        <div class="d-grid">
            <button type="submit"
                    class="btn btn-primary btn-lg">
                로그인
            </button>
        </div>
        <div class="text-center mt-3">
            <a href="/member/form"
               class="text-decoration-none">
                회원가입
            </a>
        </div>
        <!-- 로그인 실패 메시지 -->
        <c:if test="${loginfail==true}">
            <div class="alert alert-danger mt-3 text-center">
                아이디 또는 비밀번호가 틀렸습니다.
            </div>
        </c:if>
    </form>
</div>
</body>
</html>