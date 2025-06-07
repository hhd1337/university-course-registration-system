<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25. 4. 20.
  Time: 오전 6:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<html>
<head>
  <title>학년별 이수 학점 조회</title>
  <style>
    table { border-collapse: collapse; width: 60%; margin: 20px auto; }
    th, td { border: 1px solid #aaa; padding: 10px; text-align: center; }
    th { background-color: #f0f0f0; }
    tfoot td { font-weight: bold; background-color: #ffffcc; }
    a { text-decoration: none; color: blue; }
  </style>
</head>
<body>
<h2 style="text-align:center">학기별 이수 학점</h2>
<table>
  <thead>
  <tr>
    <th>년도</th>
    <th>학기</th>
    <th>취득 학점</th>
    <th>상세보기</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="summary" items="${creditSummaries}">
    <tr>
      <td>${summary.year}</td>
      <td>${summary.semester}</td>
      <td>${summary.totalCredits}</td>
      <td><a href="${pageContext.request.contextPath}/credits/details?year=${summary.year}&semester=${summary.semester}">상세보기</a></td>
    </tr>
  </c:forEach>
  </tbody>
  <tfoot>
  <tr>
    <td colspan="2">총계</td>
    <td colspan="2">${totalCredits}</td>
  </tr>
  </tfoot>
</table>
</body>
</html>

