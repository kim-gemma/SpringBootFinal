<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<title>상품 등록</title>

<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Nanum Myeongjo', serif;
    }

    .form-card {
        max-width: 600px;
        margin: 80px auto;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        background: white;
    }

    .form-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 30px;
        text-align: center;
    }

    .btn-area {
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
<div class="form-card">
    <div class="form-title">
        <i class="bi bi-box-seam"></i> 상품 정보 입력
    </div>
    <form action="insert" method="post" enctype="multipart/form-data">

        <div class="mb-3">
            <label class="form-label">상품명</label>
            <input type="text" name="sangpum" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">가격</label>
            <input type="number" name="price" class="form-control">
        </div>

        <div class="mb-3">
            <label class="form-label">사진</label>
            <input type="file" name="upload" class="form-control" multiple>
        </div>

        <div class="btn-area">
            <button type="submit" class="btn btn-success me-2">
                <i class="bi bi-save"></i> 서버 저장
            </button>

            <button type="button"
                    class="btn btn-secondary"
                    onclick="location.href='list'">
                <i class="bi bi-list"></i> 목록 이동
            </button>
        </div>
    </form>
</div>
</body>
</html>