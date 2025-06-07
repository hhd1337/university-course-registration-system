<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25. 4. 20.
  Time: 오후 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
  .global-header {
    background-color: #3498db;
    padding: 12px 24px;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .global-header .left,
  .global-header .center,
  .global-header .right {
    flex: 1;
  }

  .global-header .center {
    text-align: center;
    font-weight: bold;
    font-size: 22px;
  }

  .global-header a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    display: flex;
    align-items: center;
  }

  .global-header a:hover {
    opacity: 0.8;
  }

  .global-header img {
    width: 24px;
    height: 24px;
    margin-right: 6px;
  }
</style>

<div class="global-header">
  <div class="left">
    <a href="${pageContext.request.contextPath}/">🏠 홈</a>
  </div>
  <div class="center">
    한성대학교 종합 정보 시스템
  </div>
  <div class="right"><!-- 가이드라인에 로그인 버튼 있지만 생략, 빈공간으로 둠 --></div>
</div>

