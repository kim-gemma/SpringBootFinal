<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gamja+Flower&family=Nanum+Myeongjo&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<title>상품 입고 목록</title>

<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Nanum Myeongjo', serif;
    }

    .main-card {
        max-width: 600px;
        margin: 80px auto;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        background: white;
        text-align: center;
    }

    .main-title {
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 30px;
    }

    .add-btn {
        padding: 10px 25px;
        font-size: 16px;
        border-radius: 50px;
    }
</style>
</head>
<body>
<jsp:include page="../../layout/title.jsp"></jsp:include>
<div class="main-card">

    <div class="main-title">
        <i class="bi bi-box-seam"></i>
        ${totalCount}개의 상품이 입고중입니다
    </div>

    <div class="mb-4">
        <button type="button"
                class="btn btn-primary add-btn"
                onclick="location.href='ipgoform'">
            <i class="bi bi-plus-circle"></i> 상품 추가
        </button>
    </div>
    <table class="table table-hover align-middle text-center">
    <thead class="table-light">
        <tr>
            <th>사진</th>
            <th>상품명</th>
            <th>가격</th>
            <th>입고일</th>
            <th>관리</th>
        </tr>
    </thead>
    <tbody>
	    <c:forEach var="data" items="${list}">
	        <tr>
	            <!-- 사진 -->
	            <td>
	                <c:if test="${data.photoname != 'no'}">
	                    <c:forTokens var="picture"
	                                 items="${data.photoname}"
	                                 delims=","
	                                 begin="0"
	                                 end="0">
	                        <img src="../ipgosave/${picture}"
	                             class="img-thumbnail"
	                             style="width:80px; height:80px; object-fit:cover;">
	                    </c:forTokens>
	                </c:if>
	            </td>
	
	            <!-- 상품명 -->
	            <td class="fw-bold">
	                ${data.sangpum}
	            </td>
	            <!-- 가격 -->
	            <td>
	                <fmt:formatNumber value="${data.price}" pattern="#,###"/> 원
	            </td>
	
	            <!-- 입고일 -->
	            <td>
	                <fmt:formatDate value="${data.ipgoday}" pattern="yyyy-MM-dd"/>
	            </td>
	
	            <!-- 수정/삭제 버튼 -->
	            <td>
	                <button class="btn btn-sm btn-outline-primary">
	                    <i class="bi bi-pencil-square"></i> 수정
	                </button>
	
	                <button class="btn btn-sm btn-outline-danger">
	                    <i class="bi bi-trash"></i> 삭제
	                </button>
	            </td>
	
	        </tr>
	    </c:forEach>
	    </tbody>
	</table>
</div>
</body>
</html>