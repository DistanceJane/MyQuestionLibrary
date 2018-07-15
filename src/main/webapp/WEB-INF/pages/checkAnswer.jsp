<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/14
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap-icheck/square/green.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-icheck/js/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>试卷练习</title>
</head>
<body>
<div class="custom-body">
    <div class="custom-container">
        <div class="custom-panel">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="layui-row">
                        <div class="layui-col-md4">
                            <strong>${subjectName}专项练习</strong>
                        </div>
                        <div class="layui-col-md4">
                            得分：<span class="custom-text-red">${scoreCount}分</span>
                        </div>
                        <div class="layui-col-md4">
                            做对题数：<span>${correctCount}/${number}</span>
                        </div>
                    </div>
                </div>
                <div class="layui-card-body">
                    <div class="layui-row">
                        <c:forEach items="${checkQuestions}"  var="cq">
                            <div class="custom-cube">
                                <c:choose>
                                    <c:when test="${cq.correct == 1}">
                                        <a class="custom-cube-green" style="text-decoration: none; color: #fff" href="#"  onclick="showQuestion(${cq.questionNo})">${cq.questionNo}</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="custom-cube-red" href="#" style="text-decoration: none; color: #fff" onclick="showQuestion(${cq.questionNo})">${cq.questionNo}</a>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="custom-super-divider"></div>
                </div>
            </div>
        </div>
        <div id="question_panel">

        </div>
    </div>
</div>
</body>
<script>

    $(document).ready(function () {
       showQuestion(1);
    });

    function showQuestion(no){
        alert(no);
        $("#question_panel").load("${pageContext.request.contextPath}/paper/showAnswer.do?questionNo=" + no);
    }
</script>
</html>
