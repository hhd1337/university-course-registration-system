<%--
  Created by IntelliJ IDEA.
  User: nykim
  Date: 2022/12/13
  Time: 12:55 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
  <title>학사 정보 시스템</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #eef2f3;
    }

    header {
      background-color: #f9c937;
      padding: 20px;
      text-align: center;
      font-size: 28px;
      font-weight: bold;
      position: relative;
    }

    .login-btn {
      position: absolute;
      right: 30px;
      top: 20px;
      padding: 8px 16px;
      background-color: #333;
      color: white;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      font-size: 14px;
    }

    .container {
      display: flex;
      justify-content: space-around;
      padding: 50px 20px;
    }

    .card {
      background-color: white;
      width: 30%;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      text-align: center;
    }

    .card h2 {
      margin-bottom: 20px;
    }

    .card p {
      font-size: 14px;
      color: #666;
    }

    .card button {
      margin-top: 20px;
      padding: 10px 24px;
      background-color: #6c63ff;
      color: white;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 16px;
    }

    .card button:hover {
      background-color: #5145cd;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="card">
    <img src="${pageContext.request.contextPath}/resources/images/credit_summary_lookup.png" alt="학점 조회 이미지" style="width: 110px; margin-bottom: 20px;">
    <h2>학년별 이수 학점 조회</h2>
    <p>모든 학기별 이수한 학점을 조회할 수 있습니다.</p>
    <button onclick="location.href='${pageContext.request.contextPath}/credits'">조회하기</button>
  </div>

  <div class="card">
    <img src="${pageContext.request.contextPath}/resources/images/course_registration.png" alt="수강 신청 이미지" style="width: 100px; margin-bottom: 20px;">
    <h2>수강 신청하기</h2>
    <p>2025년 2학기에 신청할 과목을 등록할 수 있습니다.</p>
    <button onclick="location.href='${pageContext.request.contextPath}/register'">수강신청하기</button>
  </div>

  <div class="card">
    <img src="${pageContext.request.contextPath}/resources/images/course_application_status.png" alt="수강 신청 조회 이미지" style="width: 100px; margin-bottom: 20px;">
    <h2>수강 신청 조회</h2>
    <p>2025년 2학기에 신청한 과목 내역을 확인할 수 있습니다.</p>
    <button onclick="location.href='${pageContext.request.contextPath}/mycourses'">조회하기</button>
  </div>
</div>
</body>
</html>

