<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<title>메뉴</title>

<style>
    body {
        margin: 0;
        background-color: #f8f9fa;
    }

    .navbar-brand img {
        height: 45px;
    }

    .nav-link {
        font-weight: 500;
    }

    .nav-link:hover {
        color: #0d6efd !important;
    }
    .navbar-nav {
   	  	display: flex;
    	flex-direction: row;
    }
    .nav-item {
    	padding: 20px;
    }
</style>
</head>

<c:set var="root" value="${pageContext.request.contextPath}"/>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm px-4">
    <a class="navbar-brand" href="${root}/">
        <img src="${root}/image2/title2.png">
    </a>

    <!-- 모바일 버튼 -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- 메뉴 -->
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">

            <li class="nav-item">
                <a class="nav-link" href="${root}/">
                    <i class="bi bi-house"></i> Home
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="${root}/ipgo/list">
                    <i class="bi bi-box-seam"></i> 상품목록
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="${root}/member/form">
                    <i class="bi bi-person-plus"></i> 회원가입
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="${root}/member/list">
                    <i class="bi bi-people"></i> 회원목록
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="${root}/member/form">
                    <i class="bi bi-chat-dots"></i> 회원게시판
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="${root}/login/form">
                    <i class="bi bi-box-arrow-in-right"></i> 로그인
                </a>
            </li>

        </ul>
    </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>