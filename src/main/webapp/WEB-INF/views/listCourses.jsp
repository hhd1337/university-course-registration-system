<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25. 4. 20.
  Time: 오전 5:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<html>
<head>
  <title>2025년 2학기 수강 신청 조회</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f5f7fa;
      margin: 0;
      padding: 40px;
    }

    h2 {
      color: #333;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background: #fff;
      box-shadow: 0 4px 10px rgba(0,0,0,0.05);
      border-radius: 10px;
      overflow: hidden;
    }

    thead {
      background-color: #6c63ff;
      color: #fff;
    }

    th, td {
      padding: 14px 20px;
      text-align: center;
      border-bottom: 1px solid #eee;
    }

    tbody tr:hover {
      background-color: #f1f1f1;
    }

    .home-link {
      margin-top: 30px;
      display: inline-block;
      background: #6c63ff;
      color: white;
      padding: 10px 20px;
      border-radius: 6px;
      text-decoration: none;
    }

    .home-link:hover {
      background-color: #5145cd;
    }
  </style>
</head>
<body>

<h2>📋 2025년 2학기 수강 신청 내역</h2>

<table>
  <thead>
  <tr>
    <th>교과코드</th>
    <th>교과목명</th>
    <th>교과구분</th>
    <th>담당교수</th>
    <th>학점</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="course" items="${courses}">
    <tr>
      <td>${course.code}</td>
      <td>${course.name}</td>
      <td>${course.division}</td>
      <td>${course.professor}</td>
      <td>${course.credit}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<a class="home-link" href="${pageContext.request.contextPath}/">🏠 홈으로 돌아가기</a>

</body>
</html>


