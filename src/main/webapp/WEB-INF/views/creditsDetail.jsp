<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25. 4. 20.
  Time: 오전 6:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<html>
<head>
  <title>수강 내역 상세</title>
  <style>
    table { border-collapse: collapse; width: 80%; margin: 20px auto; }
    th, td { border: 1px solid #aaa; padding: 10px; text-align: center; }
    th { background-color: #f9f9f9; }
  </style>
</head>
<body>
<h2 style="text-align:center">${year}년 ${semester}학기 수강 내역</h2>
<table>
  <thead>
  <tr>
    <th>년도</th>
    <th>학기</th>
    <th>교과목명</th>
    <th>교과구분</th>
    <th>담당교수</th>
    <th>학점</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="course" items="${courses}">
    <tr>
      <td>${course.year}</td>
      <td>${course.semester}</td>
      <td>${course.name}</td>
      <td>${course.division}</td>
      <td>${course.professor}</td>
      <td>${course.credit}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>

