<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body{
        background-color:#f5f7fa;
    }

    .table-container{
        width:900px;
        margin:50px auto;
        background:white;
        padding:30px;
        border-radius:12px;
        box-shadow:0 5px 15px rgba(0,0,0,0.08);
    }

    .profile-img{
        width:60px;
        height:60px;
        border-radius:50%;
        object-fit:cover;
    }
</style>
</head>
<body>
<div class="table-container">
    <div class="d-flex justify-content-between mb-4">
        <h3>회원 목록</h3>
        <a href="memberform" class="btn btn-primary">회원가입</a>
    </div>

    <table class="table table-hover align-middle text-center">
        <thead class="table-dark">
            <tr>
                <th>번호</th>
                <th>이름</th>
                <th>아이디</th>
                <th>사진</th>
                <th>이메일</th>
                <th>가입일</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="data" items="${list}" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${data.name}</td>
                <td class="fw-bold text-primary">
                    ${data.id}
                </td>
                <td>
                    <c:if test="${data.photo != 'no'}">
                        <img src="../membersave/${data.photo}"
                             class="profile-img">
                    </c:if>
                    <c:if test="${data.photo == 'no'}">
                        <span class="text-muted">없음</span>
                    </c:if>
                </td>
                <td>${data.email}</td>
                <td>${data.gaipday}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>