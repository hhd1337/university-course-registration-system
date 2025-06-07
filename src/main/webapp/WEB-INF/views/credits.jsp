<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25. 4. 20.
  Time: 오전 5:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<html>
<head>
  <title>학년별 이수 학점 조회</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<h2>📘 학년별 이수 학점 조회</h2>

<table border="1" cellpadding="10" cellspacing="0">
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
      <td>
        <a href="${pageContext.request.contextPath}/credits/detail?year=${summary.year}&semester=${summary.semester}">상세보기</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
  <tfoot>
  <tr>
    <td colspan="2"><strong>총계</strong></td>
    <td colspan="2"><strong>${totalCredits}</strong> 학점</td>
  </tr>
  </tfoot>
</table>

<br>
<a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>

</body>
</html>

