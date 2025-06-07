<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25. 4. 20.
  Time: 오전 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<html>
<head>
    <title>수강 신청하기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f8fb;
        }
        h2 {
            text-align: center;
            margin-top: 40px;
        }
        form {
            width: 450px;
            margin: 30px auto;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
        }
        th {
            text-align: left;
            padding: 10px 0 5px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 3px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .error {
            color: red;
            font-size: small;
            margin-top: -8px;
            margin-bottom: 10px;
            display: block;
        }
        .submit-btn {
            text-align: center;
            margin-top: 20px;
        }
        .submit-btn input {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 30px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .submit-btn input:hover {
            background-color: #2980b9;
        }
        .home-link {
            text-align: center;
            margin-top: 20px;
        }
        .home-link a {
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>

<h2>📚 2025년 2학기 수강 신청</h2>

<%--@elvariable id="course" type=""--%>
<form:form modelAttribute="course" method="POST" action="${pageContext.request.contextPath}/register">

    <table>
        <tr>
            <th>수강년도</th>
            <td>
                <form:input path="year" readonly="true" value="2025"/>
            </td>
        </tr>
        <tr>
            <th>학기</th>
            <td>
                <form:input path="semester" readonly="true" value="2"/>
            </td>
        </tr>
        <tr>
            <th>교과코드</th>
            <td>
                <form:input path="code"/>
                <form:errors path="code" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <th>교과목명</th>
            <td>
                <form:input path="name"/>
                <form:errors path="name" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <th>교과구분</th>
            <td>
                <form:select path="division">
                    <form:option value="" label="-- 선택 --"/>
                    <form:option value="전필" label="전필"/>
                    <form:option value="전선" label="전선"/>
                    <form:option value="전기" label="전기"/>
                    <form:option value="교필" label="교필"/>
                    <form:option value="선필교" label="선필교"/>
                    <form:option value="일선" label="일선"/>
                </form:select>
                <form:errors path="division" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <th>담당교수</th>
            <td>
                <form:input path="professor"/>
                <form:errors path="professor" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <th>학점</th>
            <td>
                <form:input path="credit"/>
                <form:errors path="credit" cssClass="error"/>
            </td>
        </tr>
    </table>

    <div class="submit-btn">
        <input type="submit" value="신청하기"/>
    </div>
</form:form>



</body>
</html>


